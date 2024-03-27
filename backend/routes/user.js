const router = require('express').Router();
const userController = require('../controllers/userControllers');
const { verifyToken } = require('../middlewave/verifyToken');

router.get('/', verifyToken, userController.getUser)
router.delete('/', verifyToken, userController.delete);

module.exports = router