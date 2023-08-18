const id = document.getElementById("id");
const idMsg= document.getElementById("idMsg");
const pw = document.getElementById("pw");
const pwMsg= document.getElementById("pwMsg");
const pw2 = document.getElementById("pw2");
const pw2Msg= document.getElementById("pw2Msg");
const name1= document.getElementById("name1");
const nameMsg = document.getElementById("nameMsg");
const phone = document.getElementById("phone");
const phoneMsg = document.getElementById("phoneMsg");
const address = document.getElementById("address");
const addressMsg = document.getElementById("addressMsg");
const birth = document.getElementById("birth");
const birthMsg = document.getElementById("birthMsg");



id.addEventListener("blur",function(){
    idMsg.innerHTML='';
    fetch("idCheck?id="+id.value, {method:"get"})
        .then((response)=>{return response.text()})
        .then((r)=>{
           if(r.trim()==1){
                if(id.value.length>10 || id.value==''){
                    idMsg.innerHTML='아이디를 10자이내로 입력하시오';
                    idMsg.className='f';
                }else{
                    idMsg.innerHTML='사용 가능한 아이디 입니다.';
                    idMsg.className='t';
                }
           }else{
                idMsg.innerHTML='가입된 아이디 입니다.';
                idMsg.className='f';
                //가입된아이디면 로그인창가는버튼 또는 비밀번호찾기버튼 밑에 추가되게
           }
        })

});

pw.addEventListener("blur",function(){
    pwMsg.innerHTML='';
    if(pw.value.length<8 || pw.value.length>16 || pw.value=='')
        pwMsg.innerHTML="비밀번호를 8자이상 16자이내로 입력하시오.";
    if(pw.value==''){
         pw2Msg.innerHTML='';
     }
});

pw2.addEventListener("keyup",function(){
    if(pw2.value==pw.value){
        pw2Msg.innerHTML="비밀번호가 일치합니다.";
        pw2Msg.className="t";
    }else{
        pw2Msg.innerHTML="비밀번호가 틀렸습니다";
        pw2Msg.className="f";
    }   
});

name1.addEventListener("blur",function(){
        nameMsg.innerHTML='';
    if(name1.value==''){
        nameMsg.innerHTML="이름을 입력해주세요";
        nameMsg.className='f';
    }
});

phone.addEventListener("blur",function(){
    phoneMsg.innerHTML='';
    if(phone.value==''){
        phoneMsg.innerHTML="휴대폰번호를 입력하세요."
        phoneMsg.className="f";
    }
});

address.addEventListener("blur",function(){
    addressMsg.innerHTML='';
    if(address.value==''){
        addressMsg.innerHTML="주소를 입력하세요.";
        addressMsg.className="f";
    }
})

birth.addEventListener("change",function(){
    let check = emptyCheck(birth);
    birthMsg.innerHTML="생년월일을 입력하세요.";
    birthMsg.className="f";
    checkResults[5]=false;
    if(!check){
        birthMsg.innerHTML="OK";
        birthMsg.className="s";
        checkResults[5]=true;
    }
})




