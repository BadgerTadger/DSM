namespace dsm_win
{
    partial class frmRingNumbers
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
            this.btnBack = new System.Windows.Forms.Button();
            this.dgvRingNumbers = new System.Windows.Forms.DataGridView();
            this.btnAllocateRingNumbers = new System.Windows.Forms.Button();
            this.btnResetRingNumbers = new System.Windows.Forms.Button();
            this.lblMessage = new System.Windows.Forms.Label();
            ((System.ComponentModel.ISupportInitialize)(this.dgvRingNumbers)).BeginInit();
            this.SuspendLayout();
            // 
            // btnBack
            // 
            this.btnBack.Location = new System.Drawing.Point(686, 361);
            this.btnBack.Name = "btnBack";
            this.btnBack.Size = new System.Drawing.Size(75, 23);
            this.btnBack.TabIndex = 0;
            this.btnBack.Text = "Back";
            this.btnBack.UseVisualStyleBackColor = true;
            this.btnBack.Click += new System.EventHandler(this.btnBack_Click);
            // 
            // dgvRingNumbers
            // 
            this.dgvRingNumbers.AllowUserToAddRows = false;
            this.dgvRingNumbers.AllowUserToDeleteRows = false;
            this.dgvRingNumbers.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize;
            this.dgvRingNumbers.Location = new System.Drawing.Point(13, 41);
            this.dgvRingNumbers.MinimumSize = new System.Drawing.Size(748, 314);
            this.dgvRingNumbers.Name = "dgvRingNumbers";
            this.dgvRingNumbers.ReadOnly = true;
            this.dgvRingNumbers.Size = new System.Drawing.Size(748, 314);
            this.dgvRingNumbers.TabIndex = 1;
            // 
            // btnAllocateRingNumbers
            // 
            this.btnAllocateRingNumbers.Enabled = false;
            this.btnAllocateRingNumbers.Location = new System.Drawing.Point(13, 13);
            this.btnAllocateRingNumbers.Name = "btnAllocateRingNumbers";
            this.btnAllocateRingNumbers.Size = new System.Drawing.Size(128, 23);
            this.btnAllocateRingNumbers.TabIndex = 2;
            this.btnAllocateRingNumbers.Text = "Allocate Ring Numbers";
            this.btnAllocateRingNumbers.UseVisualStyleBackColor = true;
            this.btnAllocateRingNumbers.Click += new System.EventHandler(this.btnAllocateRingNumbers_Click);
            // 
            // btnResetRingNumbers
            // 
            this.btnResetRingNumbers.Enabled = false;
            this.btnResetRingNumbers.Location = new System.Drawing.Point(148, 12);
            this.btnResetRingNumbers.Name = "btnResetRingNumbers";
            this.btnResetRingNumbers.Size = new System.Drawing.Size(128, 23);
            this.btnResetRingNumbers.TabIndex = 3;
            this.btnResetRingNumbers.Text = "Reset Ring Numbers";
            this.btnResetRingNumbers.UseVisualStyleBackColor = true;
            this.btnResetRingNumbers.Click += new System.EventHandler(this.btnResetRingNumbers_Click);
            // 
            // lblMessage
            // 
            this.lblMessage.AutoSize = true;
            this.lblMessage.Location = new System.Drawing.Point(12, 370);
            this.lblMessage.Name = "lblMessage";
            this.lblMessage.Size = new System.Drawing.Size(35, 13);
            this.lblMessage.TabIndex = 17;
            this.lblMessage.Text = "label3";
            // 
            // frmRingNumbers
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(773, 392);
            this.Controls.Add(this.lblMessage);
            this.Controls.Add(this.btnResetRingNumbers);
            this.Controls.Add(this.btnAllocateRingNumbers);
            this.Controls.Add(this.dgvRingNumbers);
            this.Controls.Add(this.btnBack);
            this.Name = "frmRingNumbers";
            this.Text = "frmRingNumbers";
            this.Load += new System.EventHandler(this.frmRingNumbers_Load);
            ((System.ComponentModel.ISupportInitialize)(this.dgvRingNumbers)).EndInit();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.Button btnBack;
        private System.Windows.Forms.DataGridView dgvRingNumbers;
        private System.Windows.Forms.Button btnAllocateRingNumbers;
        private System.Windows.Forms.Button btnResetRingNumbers;
        private System.Windows.Forms.Label lblMessage;
    }
}