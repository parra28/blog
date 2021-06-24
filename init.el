(use-package org-static-blog
  :ensure t
  :init
  (setq org-static-blog-publish-title "el blog de lázaro"
        org-static-blog-publish-url "https://elblogdelazaro.org/"
        org-static-blog-publish-directory "~/Documentos/proyectos/elblogdelazaro.org/public/"
        org-static-blog-posts-directory "~/Documentos/proyectos/elblogdelazaro.org/posts"
        org-static-blog-drafts-directory "~/Documentos/proyectos/elblogdelazaro.org/drafts"
        org-static-blog-rss-file "index.xml"
        org-static-blog-rss-max-entries 15
        org-static-blog-langcode "es"
        org-export-with-toc nil
        org-static-blog-enable-tags t
        org-export-with-section-numbers nil
        org-static-blog-preview-ellipsis "(ver más..)"
        org-static-blog-preview-link-p t
        org-static-blog-preview-convert-titles nil
        org-static-blog-use-preview t)

  (setq org-static-blog-rss-extra
        (concat
         "<generator>"
         (format "Emacs %d.%d" emacs-major-version emacs-minor-version) " "
         "Org-mode " (org-version) " "
         "org-static-blog 1.4.0"
         "</generator>\n"
         "<webMaster>" user-full-name " (" user-mail-address ") " "</webMaster>\n"
         "<image>\n"
         "<url>" org-static-blog-publish-url "static/favicon.ico" "</url>\n"
         "<title>" org-static-blog-publish-title "</title>\n"
         "<link>" org-static-blog-publish-url "</link>\n"
         "</image>\n"))

  ;; This header is inserted into the <head> section of every page:
  ;;   (you will need to create the style sheet at
  ;;    ~/projects/blog/static/style.css
  ;;    and the favicon at
  ;;    ~/projects/blog/static/favicon.ico)
  (setq org-static-blog-page-header
        "<meta name=\"author\" content=\"Carlos M.\">
             <meta name=\"generator\" content=\"org-blog-static\">
             <meta name=\"viewport\" content=\"initial-scale=1,width=device-width,minimum-scale=1\">
             <link rel=\"shortcut icon\" href=\"static/favicon.ico\" type=\"image/x-icon\">
             <link rel=\"icon\" href=\"static/favicon.ico\" type=\"image/x-icon\">
             <link href= \"static/style.css\" rel=\"stylesheet\" type=\"text/css\">"
        )

  ;; This preamble is inserted at the beginning of the <body> of every page:
  ;;   This particular HTML creates a <div> with a simple linked headline

  (setq org-static-blog-page-preamble
        "<header>
                <p id=\"blogname\">
                    <a href=\"index.html\">El Blog de Lázaro</a>
                <p/>
                    <p id=\"catchphrase\">
                        \"Mis notas sobre tecnolog&iacute;a\"
                    </p>
                <div id=\"nav\">
                    <a href=\"about.html\">Acerca de</a> <span class=\"sep\">|</span>
                    <a href=\"archive.html\">Archivo</a> <span class=\"sep\">|</span>
                    <a href=\"tags.html\">Tags</a> <span class=\"sep\">|</span>
                    <a href=\"index.xml\">Rss</a>
                </div>")

  ;; This postamble is inserted at the end of the <body> of every page:
					;   This particular HTML creates a <div> with a link to the archive page
  ;;   and a licensing stub.
  (setq org-static-blog-page-postamble
        "<footer id=\"footer\">
              Creado por <a href=\"https://elblogdelazaro.org\">el blog de l&aacute;zaro</a> bajo licencia <a rel=\"license\"  href=\"http://creativecommons.org/licenses/by-sa/4.0/\"> CC BY-SA 4.0</a>
               generado con <a rel=\"org-static-blog\" href=\"https://github.com/bastibe/org-static-blog/\"> org-static-blog</a>
               y <a rel=\"Emacs\" href=\"https://www.gnu.org/software/emacs/\">emacs</a>
           </footer>"))
