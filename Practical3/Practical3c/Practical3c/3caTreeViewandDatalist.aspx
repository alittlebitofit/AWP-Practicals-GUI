<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="3caTreeViewandDatalist.aspx.cs" Inherits="Practical3c._3caTreeViewandDatalist" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:TreeView ID="TreeView1" runat="server">
                <Nodes>
                    <asp:TreeNode Text="BCom" Value="BCom" Checked="True" ShowCheckBox="True">
                        <asp:TreeNode Text="FYBCom" Value="FYBCom" Checked="True" ShowCheckBox="True"></asp:TreeNode>
                        <asp:TreeNode Text="SYBCom" Value="SYBCom" Checked="True" ShowCheckBox="True"></asp:TreeNode>
                        <asp:TreeNode Text="TYBCom" Value="TYBCom" Checked="True" ShowCheckBox="True"></asp:TreeNode>
                    </asp:TreeNode>
                    <asp:TreeNode Text="BScIT" Value="BScIT" Checked="True" ShowCheckBox="True">
                        <asp:TreeNode Text="FYBScIT" Value="FYBScIT" Checked="True" ShowCheckBox="True"></asp:TreeNode>
                        <asp:TreeNode Text="SYBScIT" Value="SYBScIT" Checked="True" ShowCheckBox="True"></asp:TreeNode>
                        <asp:TreeNode Text="TYBScIT" Value="TYBScIT" Checked="True" ShowCheckBox="True"></asp:TreeNode>
                    </asp:TreeNode>
                </Nodes>
            </asp:TreeView>
            <br />
            <asp:DataList ID="DataList1" runat="server">
                <ItemTemplate>
                    <%# Eval("text") %>
                </ItemTemplate>
            </asp:DataList>
            <br />
            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Button" />
        </div>
    </form>
</body>
</html>
