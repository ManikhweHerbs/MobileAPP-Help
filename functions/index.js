const functions = require("firebase-functions");

// // Create and Deploy Your First Cloud Functions
// // https://firebase.google.com/docs/functions/write-firebase-functions
//
// exports.helloWorld = functions.https.onRequest((request, response) => {
//   functions.logger.info("Hello logs!", {structuredData: true});
//   response.send("Hello from Firebase!");
// });

const stripe = require('stripe')(functions.config().stripe.testkey);

exports.spripePayment = functions.https.onRequest(async (req,res) => {
    const paymentIntent = await stripe.paymentIntent.create({
        amount: 1234,
        currency: 'usd'
    },
    function (err, paymentIntent){
        if(err!=null){
            console.log(err);
        }
        else{
            res.json({
                paymentIntent: paymentIntent.client_secret
            })
        }
    }
    
    )
})
