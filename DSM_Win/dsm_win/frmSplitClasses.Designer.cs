namespace dsm_win
{
    partial class frmSplitClasses
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
            this.btnGetEntryClasses = new System.Windows.Forms.Button();
            this.lblMessage = new System.Windows.Forms.Label();
            this.dgvEntryClasses = new System.Windows.Forms.DataGridView();
            this.btnGetFinalClasses = new System.Windows.Forms.Button();
            this.dgvFinalClassNames = new System.Windows.Forms.DataGridView();
            this.btnExit = new System.Windows.Forms.Button();
            this.numMaxClassSize = new System.Windows.Forms.NumericUpDown();
            this.label3 = new System.Windows.Forms.Label();
            ((System.ComponentModel.ISupportInitialize)(this.dgvEntryClasses)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.dgvFinalClassNames)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.numMaxClassSize)).BeginInit();
            this.SuspendLayout();
            // 
            // btnGetEntryClasses
            // 
            this.btnGetEntryClasses.Enabled = false;
            this.btnGetEntryClasses.Location = new System.Drawing.Point(15, 10);
            this.btnGetEntryClasses.Name = "btnGetEntryClasses";
            this.btnGetEntryClasses.Size = new System.Drawing.Size(107, 23);
            this.btnGetEntryClasses.TabIndex = 21;
            this.btnGetEntryClasses.Text = "Get Entry Classes";
            this.btnGetEntryClasses.UseVisualStyleBackColor = true;
            this.btnGetEntryClasses.Click += new System.EventHandler(this.btnGetEntryClasses_Click);
            // 
            // lblMessage
            // 
            this.lblMessage.AutoSize = true;
            this.lblMessage.Location = new System.Drawing.Point(12, 444);
            this.lblMessage.Name = "lblMessage";
            this.lblMessage.Size = new System.Drawing.Size(35, 13);
            this.lblMessage.TabIndex = 22;
            this.lblMessage.Text = "label3";
            // 
            // dgvEntryClasses
            // 
            this.dgvEntryClasses.AllowUserToAddRows = false;
            this.dgvEntryClasses.AllowUserToDeleteRows = false;
            this.dgvEntryClasses.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize;
            this.dgvEntryClasses.Location = new System.Drawing.Point(15, 40);
            this.dgvEntryClasses.Name = "dgvEntryClasses";
            this.dgvEntryClasses.ReadOnly = true;
            this.dgvEntryClasses.Size = new System.Drawing.Size(716, 167);
            this.dgvEntryClasses.TabIndex = 23;
            // 
            // btnGetFinalClasses
            // 
            this.btnGetFinalClasses.Enabled = false;
            this.btnGetFinalClasses.Location = new System.Drawing.Point(15, 213);
            this.btnGetFinalClasses.Name = "btnGetFinalClasses";
            this.btnGetFinalClasses.Size = new System.Drawing.Size(133, 23);
            this.btnGetFinalClasses.TabIndex = 24;
            this.btnGetFinalClasses.Text = "Get Final Class Names";
            this.btnGetFinalClasses.UseVisualStyleBackColor = true;
            this.btnGetFinalClasses.Click += new System.EventHandler(this.btnGetFinalClasses_Click);
            // 
            // dgvFinalClassNames
            // 
            this.dgvFinalClassNames.AllowUserToAddRows = false;
            this.dgvFinalClassNames.AllowUserToDeleteRows = false;
            this.dgvFinalClassNames.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize;
            this.dgvFinalClassNames.Enabled = false;
            this.dgvFinalClassNames.Location = new System.Drawing.Point(15, 243);
            this.dgvFinalClassNames.Name = "dgvFinalClassNames";
            this.dgvFinalClassNames.ReadOnly = true;
            this.dgvFinalClassNames.Size = new System.Drawing.Size(716, 167);
            this.dgvFinalClassNames.TabIndex = 25;
            // 
            // btnExit
            // 
            this.btnExit.Location = new System.Drawing.Point(656, 434);
            this.btnExit.Name = "btnExit";
            this.btnExit.Size = new System.Drawing.Size(75, 23);
            this.btnExit.TabIndex = 26;
            this.btnExit.Text = "Back";
            this.btnExit.UseVisualStyleBackColor = true;
            this.btnExit.Click += new System.EventHandler(this.btnExit_Click);
            // 
            // numMaxClassSize
            // 
            this.numMaxClassSize.Location = new System.Drawing.Point(296, 216);
            this.numMaxClassSize.Maximum = new decimal(new int[] {
            60,
            0,
            0,
            0});
            this.numMaxClassSize.Minimum = new decimal(new int[] {
            50,
            0,
            0,
            0});
            this.numMaxClassSize.Name = "numMaxClassSize";
            this.numMaxClassSize.Size = new System.Drawing.Size(45, 20);
            this.numMaxClassSize.TabIndex = 27;
            this.numMaxClassSize.Value = new decimal(new int[] {
            50,
            0,
            0,
            0});
            // 
            // label3
            // 
            this.label3.AutoSize = true;
            this.label3.Location = new System.Drawing.Point(188, 218);
            this.label3.Name = "label3";
            this.label3.Size = new System.Drawing.Size(102, 13);
            this.label3.TabIndex = 28;
            this.label3.Text = "Maximum Class Size";
            // 
            // frmSplitClasses
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(749, 472);
            this.Controls.Add(this.label3);
            this.Controls.Add(this.numMaxClassSize);
            this.Controls.Add(this.btnExit);
            this.Controls.Add(this.dgvFinalClassNames);
            this.Controls.Add(this.btnGetFinalClasses);
            this.Controls.Add(this.dgvEntryClasses);
            this.Controls.Add(this.lblMessage);
            this.Controls.Add(this.btnGetEntryClasses);
            this.Name = "frmSplitClasses";
            this.Text = "frmSplitClasses";
            this.Load += new System.EventHandler(this.frmSplitClasses_Load);
            ((System.ComponentModel.ISupportInitialize)(this.dgvEntryClasses)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.dgvFinalClassNames)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.numMaxClassSize)).EndInit();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.Button btnGetEntryClasses;
        private System.Windows.Forms.Label lblMessage;
        private System.Windows.Forms.DataGridView dgvEntryClasses;
        private System.Windows.Forms.Button btnGetFinalClasses;
        private System.Windows.Forms.DataGridView dgvFinalClassNames;
        private System.Windows.Forms.Button btnExit;
        private System.Windows.Forms.NumericUpDown numMaxClassSize;
        private System.Windows.Forms.Label label3;
    }
}