<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="3cbTreeViewOperations.aspx.cs" Inherits="Practical3c._3cbTreeViewOperations" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:TreeView ID="TreeView1" runat="server" AutoPostBack="true" OnSelectedNodeChanged="TreeView1_SelectedNodeChanged" OnTreeNodeCheckChanged="TreeView1_TreeNodeCheckChanged" OnTreeNodeCollapsed="TreeView1_TreeNodeCollapsed">
                <Nodes>
                    <asp:TreeNode Checked="True" ShowCheckBox="True" Text="BCom" Value="BCom">
                        <asp:TreeNode Checked="True" ShowCheckBox="True" Text="FYBCom" Value="FYBCom"></asp:TreeNode>
                        <asp:TreeNode Checked="True" ShowCheckBox="True" Text="SYBCom" Value="SYBCom"></asp:TreeNode>
                        <asp:TreeNode Checked="True" ShowCheckBox="True" Text="TYBCom" Value="TYBCom"></asp:TreeNode>
                    </asp:TreeNode>
                    <asp:TreeNode Checked="True" ShowCheckBox="True" Text="BScIT" Value="BScIT">
                        <asp:TreeNode Checked="True" ShowCheckBox="True" Text="FYBScIT" Value="FYBScIT"></asp:TreeNode>
                        <asp:TreeNode Checked="True" ShowCheckBox="True" Text="SYBScIT" Value="SYBScIT"></asp:TreeNode>
                        <asp:TreeNode Checked="True" ShowCheckBox="True" Text="TYBScIT" Value="TYBScIT"></asp:TreeNode>
                    </asp:TreeNode>
                </Nodes>
            </asp:TreeView>
        </div>
    </form>
</body>
</html>
