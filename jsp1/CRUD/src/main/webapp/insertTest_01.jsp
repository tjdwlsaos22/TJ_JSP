<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Insert title here</title>
       
</head>
<script type="text/javascript">
    function checkMember(){
        let regExpId = /^[a-zA-Z]/;
        let regExpName = /^[가-힣]*$/;
        let regExpPhone = /^\d{3}-\d{3,4}-\d{3,4}$/;
        let regExpAddress = /^[가-힣][가-힣0-9\s]*$/;

        let form = document.Member;

        let id =  form.userid.value;
        let name = form.name.value;
        let phone = form.phone.value; 
        let address = form.address.value; 

        if(!regExpId.test(id)){
            alert("아이디는 영어로 시작해 주세요");
            form.userid.select();
            return;
        }

        if(!regExpName.test(name)){
            alert("한글만으로 입력");
            form.name.select();
            return;
        }

        if(!regExpPhone.test(phone)){
            alert("연락처 입력을 확인해 주세요");
            return;
        }

        if(!regExpAddress.test(address)){
            alert("주소 입력을 확인해 주세요");
            form.address.select();
            return;
        }

        form.submit();
    }
</script>
<body>
    <h3>아래의 항목을 입력 후 확인 버튼을 누르세요!</h3>
    <form action="insertTest_02.jsp" name="Member" method="post">
        <table>
            <tr>
                <td>아이디:</td>
                <td><input type="text" name="userid"></td>
            </tr>
            <tr>
                <td>이름:</td>
                <td><input type="text" name="name"></td>
            </tr>
            <tr>
                <td>연락처:</td>
                <td><input type="text" name="phone" maxlength="11" size="4"></td>
            </tr>
            <tr>
                <td>주소:</td>
                <td><input type="text" name="address"></td>
            </tr>
            <tr>
                <td></td>
                <td><input type="button" value="확인" onclick="checkMember()"></td>
            </tr>
        </table>
    </form>
</body>
</html>
