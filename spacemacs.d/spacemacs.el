;; [[file:spacemacs.org::*Default options][Default options:1]]
(defun dotspacemacs/layers ()
  (setq-default
   ;; Base distribution to use. This is a layer contained in the directory
   ;; `+distribution'. For now available distributions are `spacemacs-base'
   ;; or `spacemacs'. (default 'spacemacs)
   dotspacemacs-distribution 'spacemacs

   ;; Lazy installation of layers (i.e. layers are installed only when a file
   ;; with a supported type is opened). Possible values are `all', `unused'
   ;; and `nil'. `unused' will lazy install only unused layers (i.e. layers
   ;; not listed in variable `dotspacemacs-configuration-layers'), `all' will
   ;; lazy install any layer that support lazy installation even the layers
   ;; listed in `dotspacemacs-configuration-layers'. `nil' disable the lazy
   ;; installation feature and you have to explicitly list a layer in the
   ;; variable `dotspacemacs-configuration-layers' to install it.
   ;; (default 'unused)
   dotspacemacs-enable-lazy-installation 'unused

   ;; If non-nil then Spacemacs will ask for confirmation before installing
   ;; a layer lazily. (default t)
   dotspacemacs-ask-for-lazy-installation t

   ;; List of additional paths where to look for configuration layers.
   ;; Paths must have a trailing slash (i.e. `~/.mycontribs/')
   dotspacemacs-configuration-layer-path '()
;; Default options:1 ends here

;; [[file:spacemacs.org::*Layers][Layers:1]]
dotspacemacs-configuration-layers
'(
  helm
  emacs-lisp
  spell-checking
  themes-megapack
  helpful
  (org :variables
       org-enable-notifications t
       org-enable-appear-support t)
  outshine
  python
  )
;; Layers:1 ends here

;; [[file:spacemacs.org::*Additional packages][Additional packages:1]]
dotspacemacs-additional-packages '()
;; Additional packages:1 ends here

;; [[file:spacemacs.org::*Extra package options][Extra package options:1]]
dotspacemacs-frozen-packages '()
dotspacemacs-excluded-packages '()
dotspacemacs-install-packages 'used-only))
;; Extra package options:1 ends here

;; [[file:spacemacs.org::*Start and several functions][Start and several functions:1]]
(defun dotspacemacs/init ()
;; This setq-default sexp is an exhaustive list of all the supported
;; spacemacs settings.
(setq-default
;; If non nil ELPA repositories are contacted via HTTPS whenever it's
;; possible. Set it to nil if you have no way to use HTTPS in your
;; environment, otherwise it is strongly recommended to let it set to t.
;; This variable has no effect if Emacs is launched with the parameter
;; `--insecure' which forces the value of this variable to nil.
;; (default t)
dotspacemacs-elpa-https t
;; Maximum allowed time in seconds to contact an ELPA repository.
dotspacemacs-elpa-timeout 5
;; If non nil then spacemacs will check for updates at startup
;; when the current branch is not `develop'. Note that checking for
;; new versions works via git commands, thus it calls GitHub services
;; whenever you start Emacs. (default nil)
dotspacemacs-check-for-update nil
;; If non-nil, a form that evaluates to a package directory. For example, to
;; use different package directories for different Emacs versions, set this
;; to `emacs-version'.
dotspacemacs-elpa-subdirectory nil
;; One of `vim', `emacs' or `hybrid'.
;; `hybrid' is like `vim' except that `insert state' is replaced by the
;; `hybrid state' with `emacs' key bindings. The value can also be a list
;; with `:variables' keyword (similar to layers). Check the editing styles
;; section of the documentation for details on available variables.
;; (default 'vim)
dotspacemacs-editing-style 'vim
;; If non nil output loading progress in `*Messages*' buffer. (default nil)
dotspacemacs-verbose-loading nil
;; Specify the startup banner. Default value is `official', it displays
;; the official spacemacs logo. An integer value is the index of text
;; banner, `random' chooses a random text banner in `core/banners'
;; directory. A string value must be a path to an image format supported
;; by your Emacs build.
;; If the value is nil then no banner is displayed. (default 'official)
dotspacemacs-startup-banner 'official
;; List of items to show in startup buffer or an association list of
;; the form `(list-type . list-size)`. If nil then it is disabled.
;; Possible values for list-type are:
;; `recents' `bookmarks' `projects' `agenda' `todos'."
;; List sizes may be nil, in which case
;; `spacemacs-buffer-startup-lists-length' takes effect.
dotspacemacs-startup-lists '((recents . 5)
(projects . 7))
;; True if the home buffer should respond to resize events.
dotspacemacs-startup-buffer-responsive t
;; Default major mode of the scratch buffer (default `text-mode')
dotspacemacs-scratch-mode 'text-mode
;; Start and several functions:1 ends here

;; [[file:spacemacs.org::*Declaring the Theme][Declaring the Theme:1]]
dotspacemacs-themes '(
                      doom-vibrant
                      doom-one-light
                      )
;; Declaring the Theme:1 ends here

;; [[file:spacemacs.org::*Rest of the function][Rest of the function:1]]
;; If non nil the cursor color matches the state color in GUI Emacs.
dotspacemacs-colorize-cursor-according-to-state t
;; Default font, or prioritized list of fonts. `powerline-scale' allows to
;; quickly tweak the mode-line size to make separators look not too crappy.
dotspacemacs-default-font '("Hack Nerd Font"
:size 15
:weight normal
:width normal
:powerline-scale 1.1)
;; The leader key
dotspacemacs-leader-key "SPC"
;; The key used for Emacs commands (M-x) (after pressing on the leader key).
;; (default "SPC")
dotspacemacs-emacs-command-key "SPC"
;; The key used for Vim Ex commands (default ":")
dotspacemacs-ex-command-key ":"
;; The leader key accessible in `emacs state' and `insert state'
;; (default "M-m")
dotspacemacs-emacs-leader-key "M-m"
;; Major mode leader key is a shortcut key which is the equivalent of
;; pressing `<leader> m`. Set it to `nil` to disable it. (default ",")
dotspacemacs-major-mode-leader-key ","
;; Major mode leader key accessible in `emacs state' and `insert state'.
;; (default "C-M-m")
dotspacemacs-major-mode-emacs-leader-key "C-M-m"
;; These variables control whether separate commands are bound in the GUI to
;; the key pairs C-i, TAB and C-m, RET.
;; Setting it to a non-nil value, allows for separate commands under <C-i>
;; and TAB or <C-m> and RET.
;; In the terminal, these pairs are generally indistinguishable, so this only
;; works in the GUI. (default nil)
dotspacemacs-distinguish-gui-tab nil
;; If non nil `Y' is remapped to `y$' in Evil states. (default nil)
dotspacemacs-remap-Y-to-y$ nil
;; If non-nil, the shift mappings `<' and `>' retain visual state if used
;; there. (default t)
dotspacemacs-retain-visual-state-on-shift t
;; If non-nil, J and K move lines up and down when in visual mode.
;; (default nil)
dotspacemacs-visual-line-move-text nil
;; If non nil, inverse the meaning of `g' in `:substitute' Evil ex-command.
;; (default nil)
dotspacemacs-ex-substitute-global nil
;; Name of the default layout (default "Default")
dotspacemacs-default-layout-name "Default"
;; If non nil the default layout name is displayed in the mode-line.
;; (default nil)
dotspacemacs-display-default-layout nil
;; If non nil then the last auto saved layouts are resume automatically upon
;; start. (default nil)
dotspacemacs-auto-resume-layouts nil
;; Size (in MB) above which spacemacs will prompt to open the large file
;; literally to avoid performance issues. Opening a file literally means that
;; no major mode or minor modes are active. (default is 1)
dotspacemacs-large-file-size 1
;; Location where to auto-save files. Possible values are `original' to
;; auto-save the file in-place, `cache' to auto-save the file to another
;; file stored in the cache directory and `nil' to disable auto-saving.
;; (default 'cache)
dotspacemacs-auto-save-file-location 'cache
;; Maximum number of rollback slots to keep in the cache. (default 5)
dotspacemacs-max-rollback-slots 5
;; If non nil, `helm' will try to minimize the space it uses. (default nil)
dotspacemacs-helm-resize nil
;; if non nil, the helm header is hidden when there is only one source.
;; (default nil)
dotspacemacs-helm-no-header nil
;; define the position to display `helm', options are `bottom', `top',
;; `left', or `right'. (default 'bottom)
dotspacemacs-helm-position 'bottom
;; Controls fuzzy matching in helm. If set to `always', force fuzzy matching
;; in all non-asynchronous sources. If set to `source', preserve individual
;; source settings. Else, disable fuzzy matching in all sources.
;; (default 'always)
dotspacemacs-helm-use-fuzzy 'always
;; If non nil the paste micro-state is enabled. When enabled pressing `p`
;; several times cycle between the kill ring content. (default nil)
dotspacemacs-enable-paste-transient-state nil
;; Which-key delay in seconds. The which-key buffer is the popup listing
;; the commands bound to the current keystroke sequence. (default 0.4)
dotspacemacs-which-key-delay 0.4
;; Which-key frame position. Possible values are `right', `bottom' and
;; `right-then-bottom'. right-then-bottom tries to display the frame to the
;; right; if there is insufficient space it displays it at the bottom.
;; (default 'bottom)
dotspacemacs-which-key-position 'bottom
;; If non nil a progress bar is displayed when spacemacs is loading. This
;; may increase the boot time on some systems and emacs builds, set it to
;; nil to boost the loading time. (default t)
dotspacemacs-loading-progress-bar t
;; If non nil the frame is fullscreen when Emacs starts up. (default nil)
;; (Emacs 24.4+ only)
dotspacemacs-fullscreen-at-startup nil
;; If non nil `spacemacs/toggle-fullscreen' will not use native fullscreen.
;; Use to disable fullscreen animations in OSX. (default nil)
dotspacemacs-fullscreen-use-non-native nil
;; If non nil the frame is maximized when Emacs starts up.
;; Takes effect only if `dotspacemacs-fullscreen-at-startup' is nil.
;; (default nil) (Emacs 24.4+ only)
dotspacemacs-maximized-at-startup nil
;; A value from the range (0..100), in increasing opacity, which describes
;; the transparency level of a frame when it's active or selected.
;; Transparency can be toggled through `toggle-transparency'. (default 90)
dotspacemacs-active-transparency 90
;; A value from the range (0..100), in increasing opacity, which describes
;; the transparency level of a frame when it's inactive or deselected.
;; Transparency can be toggled through `toggle-transparency'. (default 90)
dotspacemacs-inactive-transparency 90
;; If non nil show the titles of transient states. (default t)
dotspacemacs-show-transient-state-title t
;; If non nil show the color guide hint for transient state keys. (default t)
dotspacemacs-show-transient-state-color-guide t
;; If non nil unicode symbols are displayed in the mode line. (default t)
dotspacemacs-mode-line-unicode-symbols t
;; If non nil smooth scrolling (native-scrolling) is enabled. Smooth
;; scrolling overrides the default behavior of Emacs which recenters point
;; when it reaches the top or bottom of the screen. (default t)
dotspacemacs-smooth-scrolling t
;; Control line numbers activation.
;; If set to `t' or `relative' line numbers are turned on in all `prog-mode' and
;; `text-mode' derivatives. If set to `relative', line numbers are relative.
;; This variable can also be set to a property list for finer control:
;; '(:relative nil
;;   :disabled-for-modes dired-mode
;;                       doc-view-mode
;;                       markdown-mode
;;                       org-mode
;;                       pdf-view-mode
;;                       text-mode
;;   :size-limit-kb 1000)
;; (default nil)
dotspacemacs-line-numbers nil
;; Code folding method. Possible values are `evil' and `origami'.
;; (default 'evil)
dotspacemacs-folding-method 'evil
;; If non-nil smartparens-strict-mode will be enabled in programming modes.
;; (default nil)
dotspacemacs-smartparens-strict-mode nil
;; If non-nil pressing the closing parenthesis `)' key in insert mode passes
;; over any automatically added closing parenthesis, bracket, quote, etc???
;; This can be temporary disabled by pressing `C-q' before `)'. (default nil)
dotspacemacs-smart-closing-parenthesis nil
;; Select a scope to highlight delimiters. Possible values are `any',
;; `current', `all' or `nil'. Default is `all' (highlight any scope and
;; emphasis the current one). (default 'all)
dotspacemacs-highlight-delimiters 'all
;; If non nil, advise quit functions to keep server open when quitting.
;; (default nil)
dotspacemacs-persistent-server nil
;; List of search tool executable names. Spacemacs uses the first installed
;; tool of the list. Supported tools are `ag', `pt', `ack' and `grep'.
;; (default '("ag" "pt" "ack" "grep"))
dotspacemacs-search-tools '("ag" "pt" "ack" "grep")
;; The default package repository used if no explicit repository has been
;; specified with an installed package.
;; Not used for now. (default nil)
dotspacemacs-default-package-repository nil
;; Delete whitespace while saving buffer. Possible values are `all'
;; to aggressively delete empty line and long sequences of whitespace,
;; `trailing' to delete only the whitespace at end of lines, `changed'to
;; delete only whitespace for changed lines or `nil' to disable cleanup.
;; (default nil)
dotspacemacs-whitespace-cleanup nil
))
;; Rest of the function:1 ends here
