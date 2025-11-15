<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/mysitemaster.Master" CodeBehind="Default.aspx.vb" Inherits="Validation_Controls._Default" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        .form-container {
    max-width: 420px;
    margin: 40px auto;
    background: #ffffff;
    padding: 25px 30px;
    border-radius: 12px;
    box-shadow: 0px 0px 15px rgba(0,0,0,0.2);
}

.title {
    text-align: center;
    margin-bottom: 20px;
    font-size: 24px;
    font-family: Arial;
    color: #333;
}

.form-group {
    margin-bottom: 18px;
}

.form-group label {
    display: block;
    margin-bottom: 6px;
    color: #444;
    font-size: 14px;
}

.input-box {
    width: 100%;
    padding: 10px;
    border: 1px solid #bbb;
    border-radius: 6px;
    outline: none;
    font-size: 15px;
    transition: 0.3s;
}

.input-box:focus {
    border-color: #0078ff;
    box-shadow: 0 0 4px #0078ff;
}

.btn-submit {
    width: 100%;
    background: #007bff;
    color: white;
    padding: 12px;
    border: none;
    border-radius: 6px;
    font-size: 17px;
    cursor: pointer;
    transition: 0.3s;
}

.btn-submit:hover {
    background: #0056b3;
}

.error-box {
    margin-top: 15px;
    padding: 10px;
    background: #ffefef;
    border: 1px solid #ffb3b3;
    border-radius: 6px;
}

    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="form-container">

    <h2 class="title">Login Form</h2>

    <!-- Email -->
    <div class="form-group">
        <label>Email</label>
        <asp:TextBox ID="txtEmail" runat="server" CssClass="input-box"></asp:TextBox>

        <asp:RequiredFieldValidator 
            ControlToValidate="txtEmail"
            ErrorMessage="Email is required!"
            ForeColor="Red" Display="Dynamic" runat="server" />

        <asp:RegularExpressionValidator
            ControlToValidate="txtEmail"
            ErrorMessage="Invalid Email Format!"
            ValidationExpression="\w+@\w+\.\w+"
            ForeColor="Red" Display="Dynamic" runat="server" />
    </div>

    <!-- Password -->
    <div class="form-group">
        <label>Password</label>
        <asp:TextBox ID="txtPass" TextMode="Password" runat="server" CssClass="input-box"></asp:TextBox>

        <asp:RequiredFieldValidator
            ControlToValidate="txtPass"
            ErrorMessage="Password is required!"
            ForeColor="Red" Display="Dynamic" runat="server" />
    </div>

    <!-- Age -->
    <div class="form-group">
        <label>Age (18 - 60)</label>
        <asp:TextBox ID="txtAge" runat="server" CssClass="input-box"></asp:TextBox>

        <asp:RangeValidator 
            ControlToValidate="txtAge"
            MinimumValue="18"
            MaximumValue="60"
            Type="Integer"
            ErrorMessage="Age must be between 18 and 60!"
            ForeColor="Red" Display="Dynamic" runat="server" />
    </div>

    <!-- Confirm Password -->
    <div class="form-group">
        <label>Confirm Password</label>
        <asp:TextBox ID="txtConfirm" TextMode="Password" runat="server" CssClass="input-box"></asp:TextBox>

        <asp:CompareValidator 
            ControlToValidate="txtConfirm"
            ControlToCompare="txtPass"
            ErrorMessage="Passwords do not match!"
            ForeColor="Red" Display="Dynamic" runat="server" />
    </div>

    <!-- Username -->
    <div class="form-group">
        <label>Username</label>
        <asp:TextBox ID="txtUser" runat="server" CssClass="input-box"></asp:TextBox>

        <asp:RequiredFieldValidator 
            ControlToValidate="txtUser"
            ErrorMessage="Username is required!"
            ForeColor="Red" Display="Dynamic" runat="server" />

    <%--    <asp:CustomValidator 
            ID="cvUser" 
            ControlToValidate="txtUser"
            ErrorMessage="Username 'admin' is not allowed!"
            OnServerValidate="CheckUser"
            ForeColor="Red" Display="Dynamic"
            runat="server" />--%>
    </div>

    <!-- Submit Button -->
    <asp:Button ID="btnLogin" Text="Submit" runat="server" CssClass="btn-submit" />

    <!-- Validation Summary --> 
    <asp:ValidationSummary 
        ID="ValidationSummary1"
        ForeColor="Red"
        HeaderText="Please fix the following errors:"
        runat="server"
        CssClass="error-box" />

</div>
    
</asp:Content>
