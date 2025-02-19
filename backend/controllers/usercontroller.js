const User = require(' .. /models/User')

module.exports = {
    getUser: async (req, res) => {
        try {
            const user = await User.findById(req.user.id)

            const {password, _v, updatedAt, createdAt, ...userData}=user.doc;
            res.status(200).json(userData)
        } catch (error) {
            res.status(200).json(error)
        }
        
    }, delete: async (req, res) => {
        try {
            await User.findByIdAndDelete(req.user.id)
            res.status(200).json("User successfully deleted")
        } catch (error) {
            I
            res.status(500).json(error)
        }
    },
}

