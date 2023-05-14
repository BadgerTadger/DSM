namespace dsm_win
{
    partial class frmClassLists
    {
        /// <summary>
        /// Required designer variable.
        /// </summary>
        private System.ComponentModel.IContainer components = null;

        /// <summary>
        /// Clean up any resources being used.
        /// </summary>
        /// <param name="disposing">true if managed resources should be disposed; otherwise, false.</param>
        protected override void Dispose(bool disposing)
        {
            if (disposing && (components != null))
            {
                components.Dispose();
            }
            base.Dispose(disposing);
        }

        #region Windows Form Designer generated code

        /// <summary>
        /// Required method for Designer support - do not modify
        /// the contents of this method with the code editor.
        /// </summary>
        private void InitializeComponent()
        {
            this.wbClassLists = new System.Windows.Forms.WebBrowser();
            this.SuspendLayout();
            // 
            // wbClassLists
            // 
            this.wbClassLists.Dock = System.Windows.Forms.DockStyle.Fill;
            this.wbClassLists.Location = new System.Drawing.Point(0, 0);
            this.wbClassLists.MinimumSize = new System.Drawing.Size(20, 20);
            this.wbClassLists.Name = "wbClassLists";
            this.wbClassLists.Size = new System.Drawing.Size(800, 450);
            this.wbClassLists.TabIndex = 0;
            // 
            // frmClassLists
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(800, 450);
            this.Controls.Add(this.wbClassLists);
            this.Name = "frmClassLists";
            this.Text = "frmClassLists";
            this.Load += new System.EventHandler(this.frmClassLists_Load);
            this.ResumeLayout(false);

        }

        #endregion

        private System.Windows.Forms.WebBrowser wbClassLists;
    }
}