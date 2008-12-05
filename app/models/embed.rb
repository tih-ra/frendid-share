class Embed < ActiveRecord::Base
  has_one :photo, :as => :assetable, :dependent => :destroy
  validates_presence_of :title, :message => "Обязательное поле"
  validates_presence_of :place, :message => "Обязательное поле"
  validates_presence_of :url, :message => "Обязательное поле"
  validates_presence_of :email, :message => "Обязательное поле"
  validates_presence_of :name, :message => "Обязательное поле"
end
