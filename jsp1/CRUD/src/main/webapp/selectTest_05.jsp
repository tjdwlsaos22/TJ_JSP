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

        let name = form.name.value;
        let phone = form.phone.value; 
        let address = form.address.value; 


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
    <form action="selectTest_06.jsp" name="Member" method="post">
        <table>
            <tr>
                <td>성명:</td>
                <td><input type="text" name="name"></td>
            </tr>
            <tr>
                <td>전화번호:</td>
                <td><input type="text" name="phone"></td>
            </tr>
            <tr>
                <td>주소:</td>
                <td><input type="text" name="address" maxlength="11" size="4"></td>
            </tr>
            <tr>
                <td>전자우편:</td>
                <td><input type="text" name="email"></td>
            </tr>
            <tr>
                <td>관계:</td>
                <td><input type="text" name="relation"></td>
            </tr>
            <tr>
                <td></td>
                <td><input type="button" value="확인" onclick="checkMember()"></td>
            </tr>
        </table>
    </form>
</body>
</html>