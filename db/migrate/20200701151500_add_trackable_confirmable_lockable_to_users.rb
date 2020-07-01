class AddTrackableConfirmableLockableToUsers < ActiveRecord::Migration[6.0]
  def change
    ## Trackable
    add_column :users, :sign_in_count,        :integer,   default: 0,   null: false
    add_column :users, :current_sign_in_at,   :datetime
    add_column :users, :last_sign_in_at,      :datetime
    add_column :users, :current_sign_in_ip,   :inet
    add_column :users, :last_sign_in_ip,      :inet

    ## Confirmable not reconfirmable
    add_column :users, :confirmation_token,   :string
    add_column :users, :confirmed_at,         :datetime
    add_column :users, :confirmation_sent_at, :datetime 

    ## Lockable
    add_column :users, :failed_attempts,      :integer,   default: 0,   null: false   # Lock strategy is :failed_attempts
    add_column :users, :unlock_token,         :string                                 # Only if unlock strategy is :email or :both
    add_column :users, :locked_at,            :datetime
    
    add_index :users, :confirmation_token,    unique: true
    add_index :users, :unlock_token,          unique: true
  end
end
