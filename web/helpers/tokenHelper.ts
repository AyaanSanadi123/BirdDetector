import crypto from 'crypto'




export async function generateTemporaryToken(){
    const unHashedToken = crypto.randomUUID()
    const hashedToken = crypto
        .createHash('sha256')
        .update(unHashedToken)
        .digest('hex');
    const tokenExpiry = Date.now() + (20*60*1000)

    return {unHashedToken,hashedToken,tokenExpiry}

}

// this is just for the mail verification