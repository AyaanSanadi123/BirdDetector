import nodemailer from 'nodemailer';
import type SMTPTransport from 'nodemailer/lib/smtp-transport';


export const sendEmail = async ({ email, emailType, unHashedToken }: any) => {

    try {
        const transporter = nodemailer.createTransport({
            host: process.env.MAILTRAP_SMTP_HOST || "sandbox.smtp.mailtrap.io",
            port: Number(process.env.MAILTRAP_SMTP_PORT) || 587,
            auth: {
                user: process.env.MAILTRAP_SMTP_USER || "",
                pass: process.env.MAILTRAP_SMTP_PASS || "",
            },
        } as SMTPTransport.Options);
        
        const fullUrl = `${process.env.DOMAIN}/verifyemail?token=${unHashedToken}`;
        const buttonText = "Click here to verify";
        let subjectText 
        if(emailType === 'reset'){
            subjectText =  'reset your password'
        } else {
            subjectText = "Verify your email"
        }
        const mailOptions = {
            from: 'ayaansanadi8@gmail.com',
            to: email,
            subject: subjectText,
            html: `
        <p>Thank you for signing up. Please verify your email by clicking the button below.</p>
        <a href="${fullUrl}" 
           style="display: inline-block; padding: 12px 24px; font-family: Arial, sans-serif; font-size: 16px; color: #ffffff; background-color: #007bff; text-decoration: none; border-radius: 5px;">
           ${buttonText}
        </a>
        <p>If the button above does not work, copy and paste this link into your browser:</p>
        <p>${fullUrl}</p>
    `
        };
        const mailresponse = await transporter.sendMail(mailOptions);
        return mailresponse;

    } catch (error : any) {
        throw new Error(error.message);
    }
}
