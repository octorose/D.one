const { check, validationResult } = require("express-validator");

exports.ValidateUserSignup = [
  check("Username")
    .trim()
    .not()
    .isEmpty()
    .withMessage("Nameo is required")
    .isString()
    .withMessage("Must be a valide name")
    .isLength({ min: 3, max: 20 })
    .withMessage("Username must be within 3 to 20 characters!"),
  check("Email").normalizeEmail().isEmail().withMessage("invalide email"),
  check("Password")
    .trim()
    .not()
    .isEmpty()
    .withMessage("The Password is empty")
    .isLength({ min: 8 })
    .withMessage("your password must be within 8 characters at least!"),
  check("ConfimPassword")
    .trim()
    .not()
    .isEmpty()
    .custom((value, { req }) => {
      if (value != req.body.Password) {
        throw new Error("Both passwords must be same!");
      }
      return true;
    }),
];

exports.UserValidation = (req, res, next) => {
  // console.log(validationResult(req));
  const result = validationResult(req).array();
  if (!result.length) return next();

  const error = result[0].msg;
  res.json({ success: false, message: error });
};

exports.SigninValidation = [
  check("Email").trim().isEmail().withMessage("Email & password required!"),
  check("Password")
    .trim()
    .not()
    .isEmpty()
    .withMessage("Email & password required!"),
];
