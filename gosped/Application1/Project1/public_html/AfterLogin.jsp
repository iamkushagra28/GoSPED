<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
"http://www.w3.org/TR/html4/loose.dtd">
<%@ page contentType="text/html;charset=windows-1252"%>
<%@ page import="java.sql.*"%>
<!DOCTYPE html>
<html>

<head>

	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1">

	<title>Registration Form</title>

	<link rel="stylesheet" href="assets/demo.css">
	<link rel="stylesheet" href="assets/form-register.css">
        <script type = "text/javascript">
        function validate()
        {
            var a = document.forms[0].t2.value;
            for(int i=0;i<=a.length;i++)
            {
                if(a.charAt(i)>=0||a.charAt(i)<=9)
                {
                    alert("this field should contain only text value");
                    break;
                }
        }
        </script>

</head>



    <div class="main-content">

        <!-- You only need this form and the form-register.css -->

        <form class="form-register" action="datainsert.jsp" method="POST">

            <div class="form-register-with-email">

                <div class="form-white-background">

                    <div class="form-title-row">
                        <h1>Create an account</h1>
                    </div>

                    <div class="form-row">
                        <label>
                            <span>EMP-ID</span>
                            <input type="text" name="t1" required>
                        </label>
                    </div>

                    <div class="form-row">
                        <label>
                            <span>EMP-NAME</span>
                            <input type="text" name="t2" required>
                        </label>
                    </div>

                    <div class="form-row">
                        <label>
                            <span>DESIGN</span>
                            <input type="text" name="t3" required>
                        </label>
                    </div>

                    <div class="form-row">
                        <label>
                            <span>DEP-ID</span>
                            <input type="text" name="t4" required>
                        </label>
                    </div>
                    <div class="form-row">
                        <label>
                            <span>PLACE-ID</span>
                            <input type="TEXT" name="t5" required>
                        </label>
                    </div>

                    <div class="form-row">
                        <label>
                            <span>BASIC-PAY</span>
                            <input type="NUMBER" name="t6" required>
                        </label>
                    </div>

                    <div class="form-row">
                        <label>
                            <span>GROSS-PAY</span>
                            <input type="NUMBER" name="t7" required>
                        </label>
                    </div>

                    <div class="form-row">
                        <label>
                            <span>EMP-TYPE</span>
                            <input type="TEXT" name="t8" required>
                        </label>
                    </div>

                    <div class="form-row">
                        <label>
                            <span>DATE-OF-JOIN</span>
                            <input type="DATE" name="t9" required>
                        </label>
                    </div>


                    <div class="form-row">
                        <label>
                            <span>DATE-OF-BIRTH</span>
                            <input type="DATE" name="t10" required>
                        </label>
                    </div>
                    

                    <div class="form-row">
                        <label class="form-checkbox">
                            <input type="checkbox" name="checkbox" checked>
                            <span>I agree to the <a href="#">terms and conditions</a></span>
                        </label>
                    </div>

                    <div class="form-row">
                        <button type="submit" onclick="validate()">Register</button>
                    </div>

                </div>

                <a href="#" class="form-log-in-with-existing">Already have an account? Login here &rarr;</a>

            </div>

           

        </form>
         

    </div>

</body>

</html>
