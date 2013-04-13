<%@ page session="false" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>


	<head>
		<title>Sign In</title>
	</head>
 
	<body>
 	
		<script type="text/javascript">
		    function paypal_access_popup() {
		        connectWindow = window.open (
		                "", 
		        		"_PPIdentityWindow_",
	                	"location=1,status=0,scrollbars=0,width=400,height=550");
		        
	            return false;
            }
		</script>

		<form action="<c:url value="/signin/paypal"/>" method="POST" target="_PPIdentityWindow_">
		    <input class="connectButton" type="image" src="https://www.paypalobjects.com/webstatic/en_US/developer/docs/lipp/loginwithpaypalbutton.png"
                onclick="paypal_access_popup()" />
		</form>

	</body>
</html>
