import express from 'express';
import public_api from '../../configs/public_api.json';
import MailService from '../services/mailService';

/** */
let router = express.Router();
let mailService=new MailService();

/**public */
router.get("/", (req, res) => {
	res.json({ "Project Name": "mail-api" });;
});

router.post(public_api.api_url+'sendMail', async (req, res)=>{
	
	let from =req.body.from;
	let	to= req.body.to;
	let subject= req.body.subject;
	let content= req.body.content;

	try {
		let result=await mailService.sendMail(from,to,subject,content);
		console.log(JSON.stringify(result));
		if(result.status=="fail"){
			res.json(result);
		}
		res.json(result);
	} catch (error) {
		res.json({"status":"fail"});
	}
});


/**export */
module.exports = router;