const { use } = require("bcrypt/promises");
const User = require("../models/user");
const JWT = require("jsonwebtoken");
const sharp = require("sharp");
const cloudinary = require("../helper/imageUpload");
exports.creatUser = async (req, res) => {
  const { Email, Password, Username } = req.body;
  //check used Email
  const isNewEmail = await User.isEmailinUse(Email);
  if (!isNewEmail)
    return res.json({ success: false, message: "already used email" });
  //check used Username
  const isNewUser = await User.isUsernameinUse(Username);
  if (!isNewUser)
    return res.json({ success: false, message: "already used Username" });
  const user = await User({
    Email,
    Password,
    Username,
    // ConfirmePassword
  });
  await user.save();
  res.json({ success: true, user });
};

exports.UserSignin = async (req, res) => {
  const { Email, Password } = req.body;
  const user = await User.findOne({ Email });

  if (!user)
    return res.json({
      success: false,
      message: "User not found with the given email",
    });

  const isMatch = await user.ComparePassword(Password);
  if (!isMatch)
    return res.json({
      success: false,
      message: "Password does not match ",
    });
  const token = JWT.sign({ userId: user._id }, process.env.JWT_SECRET, {
    expiresIn: "1d",
  });
  let oldTokens = user.tokens || [];
  if (oldTokens.length) {
    oldTokens = oldTokens.filter(t => {
      const Timediff = (Date.now() - parseInt(t.signedAt)) / 1000;
      if (Timediff < 86400) {
        return t;
      }
    });
  }

  await User.findByIdAndUpdate(user._id, {
    tokens: [...oldTokens, { token, signedAt: Date.now().toString() }],
  });
  const userInfo = {
    Username: user.Username,
    Email: user.Email,
    avatar: user.avatar ? user.avatar : "",
  };
  res.json({
    success: true,
    // user: userInfo,
    token,
    user: { Profile: user },
  });
  // console.log(hada._parsedUrl);
};

exports.uploadProfile = async (req, res) => {
  const { user } = req;
  if (!user)
    return res
      .status(401)
      .json({ success: false, message: "unauthorized access" });
  try {
    const result = await cloudinary.uploader.upload(req.file.path, {
      public_id: `${user._id}_profile`,
      width: 500,
      height: 500,
      crop: "fill",
    });

    await User.findByIdAndUpdate(user._id, { avatar: result.url });
    res.status(201).json({
      success: true,
      message: "Your profile picture is updated",
      user: { Profile: user },
    });
  } catch (error) {
    res
      .status(500)
      .json({ success: false, message: "Your profile picture is not updated" });
    console.log("error while upploading image ", error);
  }
};
exports.SignOut = async (req, res) => {
  if (req.headers && req.headers.authorization) {
    const token = req.headers.authorization.split(" ")[1];
    if (!token) {
      return res
        .status(401)
        .json({ success: false, message: "Authorization failed!" });
    }
    const tokens = req.user.tokens;
    const newTokens = tokens.filter((t) => t.token !== token);
    await User.findByIdAndUpdate(req.user._id, { tokens: newTokens });
    res.json({ success: true, message: "logging out successfully!" });
  }
};
