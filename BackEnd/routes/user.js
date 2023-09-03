const express = require("express");
const { check } = require("express-validator");
const router = express.Router();
const {
  creatUser,
  UserSignin,
  uploadProfile,
  SignOut,
} = require("../controllers/user");
const { Isauth } = require("../Middlewares/auth");
const {
  ValidateUserSignup,
  UserValidation,
  SigninValidation,
} = require("../Middlewares/validation/user");
const multer = require("multer");

const storage = multer.diskStorage({});
const fileFilter = (req, file, cb) => {
  if (file.mimetype.startsWith("image")) {
    cb(null, true);
  } else {
    cb("invalide image file!", false);
  }
};
const uploads = multer({ storage, fileFilter });

router.post("/creat-user", ValidateUserSignup, UserValidation, creatUser);
router.post("/sign-in", SigninValidation, UserValidation, UserSignin);
router.post(
  "/upload-profile",
  Isauth,
  uploads.single("profilepic"),
  uploadProfile
);
router.get("/profile", Isauth, (req, res) => {
  if (!req.user)
    return res
      .status(401)
      .json({ success: false, message: "unauthorized access" });

  res.json({
    success: true,
    Profile: {
      Username: req.user.Username,
      Email: req.user.Email,
      avatar: req.user.avatar ? req.user.avatar : "",
    },
  });
});
router.get("/sign-out", Isauth, SignOut);

module.exports = router;
