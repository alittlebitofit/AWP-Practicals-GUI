using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Practical3c
{
    public partial class _3cbTreeViewOperations : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void TreeView1_SelectedNodeChanged(object sender, EventArgs e)
        {
            Response.Write("You have selected the option: " + TreeView1.SelectedValue);
        }

        protected void TreeView1_TreeNodeCollapsed(object sender, TreeNodeEventArgs e)
        {
            Response.Write("The value collapsed was: " + e.Node.Value);
        }

        //protected void TreeView1_TreeNodeCheckChanged(object sender, TreeNodeEventArgs e)
        //{
        //    //Response.Write(e.Node.ChildNodes + "<br><br>");
        //    UpdateChildren(e.Node, e.Node.Checked);
            
        //}

        //private void UpdateChildren(TreeNode parentNode, bool isChecked)
        //{
        //    foreach (TreeNode childNode in parentNode.ChildNodes)
        //    {
        //        childNode.Checked = isChecked;

        //        UpdateChildren(childNode, isChecked);
        //    }
        //}
    }
}