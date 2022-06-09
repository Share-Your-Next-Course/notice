const replyService = (function (){

    const addReply = async function (replyObj , callback) {
        const res = await axios.post("/replies/",replyObj)

        callback()
    }

    const getList = async function (q_id,callback) {

        const res = await axios.get(`/replies/list/${q_id}`)

        callback(res.data)
    }

    return{addReply,getList}

})()

const qs = function (str){
    return document.querySelector(str)
}

const qsAddEvent = function (selector , type , callback){

    const target = document.querySelector(selector)

    target.addEventListener(type , callback , false)
}