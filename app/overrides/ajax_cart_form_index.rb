Deface::Override.new(:virtual_path => "spree/shared/_products",
                     :name => 'remote_cart_form',
                     :replace => ".price",
                     :erb => '<%= button_to Spree.t("add_to_cart"),
                     		 {:controller => "orders", :action => "populate", :variant_id => product.id, :quantity => 1},
                     		 {:remote => true, :method=>:post} %>')