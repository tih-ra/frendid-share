class Photo < Asset
  has_attachment :content_type => :image, 
          :storage => :file_system, :path_prefix => 'public/attachments/galleries',
          :max_size => 2.megabytes,
          :resize_to => '200x100>',
          :processor => 'Rmagick',
          :thumbnails => { :thumb => '74x74!' }
  
end
