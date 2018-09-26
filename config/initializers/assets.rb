# Be sure to restart your server when you modify this file.

# Version of your assets, change this if you want to expire all your assets.
Rails.application.config.assets.version = '1.0'

# Add additional assets to the asset load path.
# Rails.application.config.assets.paths << Emoji.images_path
# Add Yarn node_modules folder to the asset load path.
Rails.application.config.assets.paths << Rails.root.join('node_modules')

# Precompile additional assets.
# application.js, application.css, and all non-JS/CSS in the app/assets
# folder are already added.
# Rails.application.config.assets.precompile += %w( admin.js admin.css )

#Librerias CSS
Rails.application.config.assets.precompile += %w( reset.css/reset.css )
Rails.application.config.assets.precompile += %w( material_design_lite_css/material.min.css )
Rails.application.config.assets.precompile += %w( boostrap_4.1_css/bootstrap.min.css )
Rails.application.config.assets.precompile += %w( materialize/materialize.min.css )

#Librerias Javascript

Rails.application.config.assets.precompile += %w( material_design_lite_js/material.min.js )
Rails.application.config.assets.precompile += %w( sweetalert.js/sweetalert.min.js )
Rails.application.config.assets.precompile += %w( jquery_3_3_1/jquery-3.3.1.min.js )
Rails.application.config.assets.precompile += %w( popper_js/popper.min.js )
Rails.application.config.assets.precompile += %w( boostrap_4.1_js/bootstrap.min.js )
Rails.application.config.assets.precompile += %w( materialize/materialize.min.js )

#CSS para las Vistas
Rails.application.config.assets.precompile += %w( styles-welcome/index-app.css )
Rails.application.config.assets.precompile += %w( styles-users/sign_in.css )
Rails.application.config.assets.precompile += %w( styles-users/sign_up.css )
Rails.application.config.assets.precompile += %w( barra-menu/navbar.css ) #Estilos para la barra de menus
Rails.application.config.assets.precompile += %w( menuPrincipal/menuPrincipal.css )

#Javascript para las vistas
Rails.application.config.assets.precompile += %w( barra-menu/navbar.js ) #script para la barra de menu
Rails.application.config.assets.precompile += %w( user-registration/registration.js )#formulario de registro
