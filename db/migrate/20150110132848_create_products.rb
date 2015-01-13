class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :name
      t.string :description

      t.timestamps null: false #这是rails框架自动（默认添加，5.0可能改成默认不添加）添加的，会在你的数据表里添加created_at和updated_at两个字段，前者在创建时被自动赋值，后者在每次更新时被自动赋值
    end
  end
end
