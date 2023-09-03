const mongoose = require("mongoose");
const bcrypt = require("bcrypt");

const userSchema = new mongoose.Schema({
  Email: {
    type: String,
    required: true,
    // unique: true,
  },
  Username: {
    type: String,
    required: false,
    // unique: true,
  },
  Password: {
    type: String,
    required: true,
  },
  avatar: String,
  tokens: [{ type: Object }],
});

userSchema.pre("save", function (next) {
  if (this.isModified("Password")) {
    bcrypt.hash(this.Password, 8, (err, hash) => {
      if (err) return next(err);
      this.Password = hash;
      next();
    });
  }
});
userSchema.methods.ComparePassword = async function (Password) {
  if (!Password) return new Error("Password is missing");
  try {
    const result = await bcrypt.compare(Password, this.Password);
    return result;
  } catch (error) {
    console.log("Error while comparing password", error.message);
  }
};
userSchema.statics.isEmailinUse = async function (Email) {
  if (!Email) throw new Error("invalid email");
  try {
    const user = await this.findOne({ Email });
    if (user) return false;

    return true;
  } catch (error) {
    console.log("error in isEmailinUse Method", error.message);
    return false;
  }
};
userSchema.statics.isUsernameinUse = async function (Username) {
  if (!Username) throw new Error("invalid email");
  try {
    const user = await this.findOne({ Username });
    if (user) return false;

    return true;
  } catch (error) {
    console.log("error in isEmailinUse Method", error.message);
    return false;
  }
};
module.exports = mongoose.model("User", userSchema);
