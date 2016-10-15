namespace dsm_win
{
    partial class SelectPerson
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

        #region Component Designer generated code

        /// <summary> 
        /// Required method for Designer support - do not modify 
        /// the contents of this method with the code editor.
        /// </summary>
        private void InitializeComponent()
        {
            this.lstPeople = new System.Windows.Forms.ListBox();
            this.txtPerson = new System.Windows.Forms.TextBox();
            this.lblCaption = new System.Windows.Forms.Label();
            this.SuspendLayout();
            // 
            // lstPeople
            // 
            this.lstPeople.FormattingEnabled = true;
            this.lstPeople.Location = new System.Drawing.Point(1, 43);
            this.lstPeople.Name = "lstPeople";
            this.lstPeople.Size = new System.Drawing.Size(323, 160);
            this.lstPeople.TabIndex = 18;
            this.lstPeople.Visible = false;
            this.lstPeople.Click += new System.EventHandler(this.lstPeople_Click);
            // 
            // txtPerson
            // 
            this.txtPerson.Location = new System.Drawing.Point(1, 21);
            this.txtPerson.Name = "txtPerson";
            this.txtPerson.Size = new System.Drawing.Size(323, 20);
            this.txtPerson.TabIndex = 17;
            this.txtPerson.KeyPress += new System.Windows.Forms.KeyPressEventHandler(this.txtPerson_KeyPress);
            // 
            // lblCaption
            // 
            this.lblCaption.AutoSize = true;
            this.lblCaption.Location = new System.Drawing.Point(1, 4);
            this.lblCaption.Name = "lblCaption";
            this.lblCaption.Size = new System.Drawing.Size(43, 13);
            this.lblCaption.TabIndex = 16;
            this.lblCaption.Text = "Caption";
            // 
            // SelectPerson
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.Controls.Add(this.lstPeople);
            this.Controls.Add(this.txtPerson);
            this.Controls.Add(this.lblCaption);
            this.Name = "SelectPerson";
            this.Size = new System.Drawing.Size(325, 205);
            this.Load += new System.EventHandler(this.SelectPerson_Load);
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.ListBox lstPeople;
        private System.Windows.Forms.TextBox txtPerson;
        private System.Windows.Forms.Label lblCaption;
    }
}
