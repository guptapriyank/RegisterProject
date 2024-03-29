<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%><%@ taglib
	uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<link href="resources/css/style.css" rel="stylesheet" type="text/css"
	media="screen" />
<script type="text/javascript" src="resources/js/jquery-1.7.2.js"></script>
<style>
.errors {
	background: #F7DEC0;
}

.errorblock {
	color: #ff0000;
	background-color: #ffEEEE;
	border: 3px solid #ff0000;
	padding: 8px;
	margin: 16px;
}
</style>
<body>
	<div class="hr">&nbsp;</div>
	<form:form modelAttribute="userEntityBean" method="Post"
		action="RegisterMe" cssClass="user_form">
		<div id="form_status"></div>
		<c:if test="${not empty error}">
			<div class="errorblock">
				Registration process failed.<br /> Caused : ${error}
			</div>
		</c:if>
		<div class="field">
			<label for="firstName">First Name</label>
			<form:input path="firstName" cssClass="user_input" />
			<span class="error"><form:errors path="firstName" /></span>
		</div>
		<div class="field">
			<label for="lastName">Last Name</label>
			<form:input path="lastName" cssClass="user_input" />
			<span class="error"><form:errors path="lastName" /></span>
		</div>
		<div class="field">
			<label for="userName">User Name</label>
			<form:input path="userName" cssClass="user_input" />
			<span class="error"><form:errors path="userName" /></span>
		</div>
		<div class="field">
			<label for="emailId">Email</label>
			<form:input path="emailId" cssClass="user_input" />
			<span class="error"><form:errors path="emailId" /></span>
		</div>

		<div class="field">
			<label for="password">Password</label>
			<form:password path="password" cssClass="user_input" />
			<span class="error"><form:errors path="password" /></span>
		</div>
		<div class="field">
			<label for="ReTypePassword">Retype Password</label>
			<form:password path="ReTypePassword" cssClass="user_input" />
			<span class="error"><form:errors path="ReTypePassword" /></span>
		</div>

		<div class="field">
			<label for="addressLine1">Address Line 1</label>
			<form:input path="addressLine1"
				cssClass="user_input" />
			<span class="error"><form:errors path="addressLine1" /></span>
		</div>

		<div class="field">
			<label for="addressLine2">Address Line 2</label>
			<form:input path="addressLine2"
				cssClass="user_input" />
			<span class="error"><form:errors path="addressLine2" /></span>
		</div>

		<div class="field">
			<label for="city">City</label>
			<form:input path="city" cssClass="user_input" />
			<span class="error"><form:errors path="city" /></span>
		</div>

		<div class="field">
			<label for="state">State</label>
			<form:input path="state" cssClass="user_input" />
			<span class="error"><form:errors path="state" /></span>
		</div>

		<div class="field">
			<label for="zipCode">Zip Code</label>
			<form:input path="zipCode" cssClass="user_input" />
			<span class="error"><form:errors path="zipCode" /></span>
		</div>

		<div class="field">
			<label for="country">Country</label>
			<form:input path="country" cssClass="user_input" />
			<span class="error"><form:errors path="country" /></span>
		</div>


		<div class="style_prefs">
			Select Style Preferences:
			<div class="gap10px">&nbsp;</div>
			<c:forEach items="${stylePreferenceList}" var="stylePreference"
				varStatus="counter">

				<div class="field">
					<input type="checkbox" name="stylePreferences"
						id="style_pref_${counter.count}"
						value="${stylePreference.stylePreferenceId}"><label
						for="style_pref_${counter.count}">${stylePreference.name}</label>
				</div>
			</c:forEach>
		</div>
		<input type="submit" value="Create Account" class="button" />
		<input name="reset" type="reset" class="button" />
	</form:form>
</body>
<script>
	$("#ReTypePassword").live(
			"blur",
			function() {
				if (($("#password").val() != $(this).val())
						&& ($("#password").val().trim().length != 0)
						&& ($(this).val().trim().length != 0)) {
					$("#password").addClass("errors");
					$(this).addClass("errors");
				} else {
					$("#password").removeClass("errors");
					$(this).removeClass("errors");
				}
			});
</script>