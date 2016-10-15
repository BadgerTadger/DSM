namespace dsm_win
{
    partial class frmVerifyPartRequests
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
            this.btnExit = new System.Windows.Forms.Button();
            this.cboClassParts = new System.Windows.Forms.ComboBox();
            this.label1 = new System.Windows.Forms.Label();
            this.lblRequiredCount = new System.Windows.Forms.Label();
            this.label2 = new System.Windows.Forms.Label();
            this.lblActualCount = new System.Windows.Forms.Label();
            this.lblMismatch = new System.Windows.Forms.Label();
            this.dgvInSelectedPart = new System.Windows.Forms.DataGridView();
            ((System.ComponentModel.ISupportInitialize)(this.dgvInSelectedPart)).BeginInit();
            this.SuspendLayout();
            // 
            // btnExit
            // 
            this.btnExit.Location = new System.Drawing.Point(678, 556);
            this.btnExit.Name = "btnExit";
            this.btnExit.Size = new System.Drawing.Size(75, 23);
            this.btnExit.TabIndex = 0;
            this.btnExit.Text = "Back";
            this.btnExit.UseVisualStyleBackColor = true;
            this.btnExit.Click += new System.EventHandler(this.btnExit_Click);
            // 
            // cboClassParts
            // 
            this.cboClassParts.FormattingEnabled = true;
            this.cboClassParts.Location = new System.Drawing.Point(12, 12);
            this.cboClassParts.Name = "cboClassParts";
            this.cboClassParts.Size = new System.Drawing.Size(621, 21);
            this.cboClassParts.TabIndex = 1;
            this.cboClassParts.SelectedIndexChanged += new System.EventHandler(this.cboClassParts_SelectedIndexChanged);
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.Location = new System.Drawing.Point(12, 40);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(84, 13);
            this.label1.TabIndex = 2;
            this.label1.Text = "Required Count:";
            // 
            // lblRequiredCount
            // 
            this.lblRequiredCount.AutoSize = true;
            this.lblRequiredCount.ForeColor = System.Drawing.Color.Lime;
            this.lblRequiredCount.Location = new System.Drawing.Point(102, 40);
            this.lblRequiredCount.Name = "lblRequiredCount";
            this.lblRequiredCount.Size = new System.Drawing.Size(13, 13);
            this.lblRequiredCount.TabIndex = 3;
            this.lblRequiredCount.Text = "0";
            // 
            // label2
            // 
            this.label2.AutoSize = true;
            this.label2.Location = new System.Drawing.Point(188, 40);
            this.label2.Name = "label2";
            this.label2.Size = new System.Drawing.Size(71, 13);
            this.label2.TabIndex = 4;
            this.label2.Text = "Actual Count:";
            // 
            // lblActualCount
            // 
            this.lblActualCount.AutoSize = true;
            this.lblActualCount.ForeColor = System.Drawing.Color.Lime;
            this.lblActualCount.Location = new System.Drawing.Point(265, 40);
            this.lblActualCount.Name = "lblActualCount";
            this.lblActualCount.Size = new System.Drawing.Size(13, 13);
            this.lblActualCount.TabIndex = 5;
            this.lblActualCount.Text = "0";
            // 
            // lblMismatch
            // 
            this.lblMismatch.AutoSize = true;
            this.lblMismatch.Location = new System.Drawing.Point(665, 15);
            this.lblMismatch.Name = "lblMismatch";
            this.lblMismatch.Size = new System.Drawing.Size(88, 13);
            this.lblMismatch.TabIndex = 7;
            this.lblMismatch.Text = "Mismatches Exist";
            // 
            // dgvInSelectedPart
            // 
            this.dgvInSelectedPart.AllowUserToAddRows = false;
            this.dgvInSelectedPart.AllowUserToDeleteRows = false;
            this.dgvInSelectedPart.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize;
            this.dgvInSelectedPart.Location = new System.Drawing.Point(15, 62);
            this.dgvInSelectedPart.Name = "dgvInSelectedPart";
            this.dgvInSelectedPart.ReadOnly = true;
            this.dgvInSelectedPart.Size = new System.Drawing.Size(738, 481);
            this.dgvInSelectedPart.TabIndex = 8;
            // 
            // frmVerifyPartRequests
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(769, 591);
            this.Controls.Add(this.dgvInSelectedPart);
            this.Controls.Add(this.lblMismatch);
            this.Controls.Add(this.lblActualCount);
            this.Controls.Add(this.label2);
            this.Controls.Add(this.lblRequiredCount);
            this.Controls.Add(this.label1);
            this.Controls.Add(this.cboClassParts);
            this.Controls.Add(this.btnExit);
            this.Name = "frmVerifyPartRequests";
            this.Text = "frmVerifyPartRequests";
            this.Load += new System.EventHandler(this.frmVerifyPartRequests_Load);
            ((System.ComponentModel.ISupportInitialize)(this.dgvInSelectedPart)).EndInit();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.Button btnExit;
        private System.Windows.Forms.ComboBox cboClassParts;
        private System.Windows.Forms.Label label1;
        private System.Windows.Forms.Label lblRequiredCount;
        private System.Windows.Forms.Label label2;
        private System.Windows.Forms.Label lblActualCount;
        private System.Windows.Forms.Label lblMismatch;
        private System.Windows.Forms.DataGridView dgvInSelectedPart;
    }
}