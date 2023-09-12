const express = require('express');
const bodyParser = require('body-parser');
const mongoose = require('mongoose');
const db = require('./db/db');
const bcrypt = require('bcryptjs');
const User = require('./model/userSchema');
const ip=require('./const');

// const cors=require('cors');

const app = express();
app.use(bodyParser.json());

// app.use(cors());

// Enable CORS with custom options
// app.use(cors({
//     origin: ip,  // Allow requests from this domain
//     methods: ['GET', 'POST'],      // Allow these HTTP methods
//     allowedHeaders: ['Content-Type'], // Allow this header
//   }));

app.get('/', (req, res) => {
    res.send('App Backend...');
});

//Register User
app.post('/signup', async (req, res) => {
    const { username, email, mobile, password } = req.body;

    if (!username || !email || !mobile || !password) {
        return res.status(422).json({ error: 'fill the proper details' });
    }

    try {
        const userExist = await User.findOne({ email: email });

        if (userExist) {
            return res.status(422).json({ error: 'Email alredy Exist' });
        }

        const user = new User({ username, email, mobile, password });


        const userRegister = await user.save();

        if (userRegister) {
            res.status(201).json({ message: 'user register successfuly' });
        } else {
            res.status(500).json({ error: 'failed to register' });
        }
    } catch (err) {
        console.log(err);
    }
});

app.get('/signin', async (req, res) => {
    try {
        const { email, password } = req.body;

        if (!email || !password) {
            return res.status(400).json({ error: 'fill the proper data' });
        }

        const userLogin = await User.findOne({ email: email });
        console.log(userLogin);
        console.log(password);
        console.log(userLogin.password);

        // console.log(userLogin); //get all data

        if (userLogin) {
            // bcrypt pass check
            //has and compare in bcrypt
            // const isMatch = await bcrypt.compare(password, userLogin.password);
            // console.log(isMatch);
            var isMatch;
            if (password === userLogin.password) {
                isMatch = true;
            } else {
                isMatch = false;
            }

            // const isMatch = await compare(password, userLogin.password);

            // Generate a uniqe JWT Token for signin
            // const token = await userLogin.generateAuthToken();
            // console.log(token); //debug token

            //== stored our jwt token in cookie
            res.cookie('jwtoken', /*token,*/ {
                // optional
                expires: new Date(Date.now() + 25892000000),
                httpOnly: true,
            });

            if (!isMatch) {
                res.status(400).json({ error: 'Invalid Credientials' });
            } else {
                res.json({ message: 'user signin successfully' });
            }
        } else {
            res.status(400).json({ error: 'Invalid Credientials' });
        }
    } catch (err) {
        console.log(err);
        res.status(500).json({
            message: 'Failed to fetch data !!!',
        });
    }
});

app.get('/profile', async (req, res) => {
    try {
        const email = req.body.email;
        console.log(email);

        if (!email) {
            return res.status(400).json({ error: 'fill the proper data' });
        }

        const userProfile = await User.findOne({ email: email });
        console.log(userProfile);
        if (!userProfile) {
            res.status(404).json({ error: 'User Not Found !!!' });
        } else {
            res.json({
                message: 'User Founded', user: {
                    'username': userProfile.username,
                    'password': userProfile.password,
                    'mobile': userProfile.mobile,
                    'email': userProfile.email
                }
            })
        }

    } catch (err) {
        console.log(err);
        res.status(500).json({
            message: 'Failed to fetch data !!!',
        });
    }
});

app.put('/update', async (req, res) => {
    const { username, email, mobile } = req.body;

    if (!username || !email || !mobile) {
        console.log('fill the proper contact form');
        return res.status(422).json({ error: 'fill the proper details' });
    }

    try {
        const userUpdate = await User.findOne({ email: email }); //userID fetch in authentication middleware //user is there or not

        if (userUpdate) {
            userUpdate.username = username;
            userUpdate.email = email;
            userUpdate.mobile = mobile;
            await userUpdate.save();

            res.status(201).json({ message: 'user updated succesffully' });
        }
    } catch (error) {
        console.log(error);
    }
});


app.put('/updatePassword', async (req, res) => {
    const { email, password, oldpassword } = req.body;
    if (!email || !password || !oldpassword) {
        console.log('fill the proper contact form');
        return res.status(422).json({ error: 'fill the proper details' });
    }
    try {
        const userUpdate = await User.findOne({ email: email });
        if (userUpdate) {
            if (userUpdate.password === oldpassword) {
                userUpdate.password = password;
                await userUpdate.save();
                res.status(201).json({ message: 'user password updated succesffully' });
            } else {
                res.status(400).json({ error: 'Previous password did\'nt match !!!' });
            }
        }
    } catch (error) {
        console.log(error);
    }
});



app.get('/logout', (req, res) => {
    // console.log("hello this is logout");
    res.clearCookie('jwtoken', { path: '/' });
    res.status(200).send('User Logout');
});

app.listen(3000, () => {
    console.log('Server started on port 3000');
});
