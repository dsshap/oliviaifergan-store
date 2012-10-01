Deface::Override.new(:virtual_path => 'spree/layouts/spree_application',
                     :name => 'remove_slider',
                     :remove => %q{#spree-slider[data-hook]})
