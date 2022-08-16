
:tanat

"26.3"

#s(hash-table size 65 test equal rehash-size 1.5 rehash-threshold 0.8125 data ("org-elpa" ("2020-08-19 20:40:42" nil (:local-repo nil :package "org-elpa" :type git)) "melpa" ("2020-08-19 20:40:42" nil (:type git :host github :repo "melpa/melpa" :no-build t :package "melpa" :local-repo "melpa")) "gnu-elpa-mirror" ("2020-08-19 20:40:42" nil (:type git :host github :repo "emacs-straight/gnu-elpa-mirror" :no-build t :package "gnu-elpa-mirror" :local-repo "gnu-elpa-mirror")) "emacsmirror-mirror" ("2020-08-19 20:40:42" nil (:type git :host github :repo "emacs-straight/emacsmirror-mirror" :no-build t :package "emacsmirror-mirror" :local-repo "emacsmirror-mirror")) "straight" ("2020-08-19 20:40:42" ("emacs") (:type git :host github :repo "raxod502/straight.el" :files ("straight*.el") :branch "master" :package "straight" :local-repo "straight.el")) "helm" ("2020-08-19 20:40:42" ("emacs" "async" "popup" "helm-core") (:type git :flavor melpa :files ("*.el" "emacs-helm.sh" (:exclude "helm.el" "helm-lib.el" "helm-source.el" "helm-multi-match.el" "helm-core-pkg.el") "helm-pkg.el") :host github :repo "emacs-helm/helm" :package "helm" :local-repo "helm")) "async" ("2020-08-19 20:40:42" ("emacs") (:type git :flavor melpa :host github :repo "jwiegley/emacs-async" :package "async" :local-repo "emacs-async")) "popup" ("2020-08-19 20:40:42" ("cl-lib") (:type git :flavor melpa :files ("popup.el" "popup-pkg.el") :host github :repo "auto-complete/popup-el" :package "popup" :local-repo "popup-el")) "helm-core" ("2020-08-19 20:40:42" ("emacs" "async") (:flavor melpa :files ("helm-core-pkg.el" "helm.el" "helm-lib.el" "helm-source.el" "helm-multi-match.el" "helm-core-pkg.el") :package "helm-core" :local-repo "helm" :type git :repo "emacs-helm/helm" :host github))))

#s(hash-table size 65 test equal rehash-size 1.5 rehash-threshold 0.8125 data ("straight" ((straight-autoloads straight straight-x) (autoload (quote straight-get-recipe) "straight" "Interactively select a recipe from one of the recipe repositories.
All recipe repositories in `straight-recipe-repositories' will
first be cloned. After the recipe is selected, it will be copied
to the kill ring. With a prefix argument, first prompt for a
recipe repository to search. Only that repository will be
cloned.

From Lisp code, SOURCES should be a subset of the symbols in
`straight-recipe-repositories'. Only those recipe repositories
are cloned and searched. If it is nil or omitted, then the value
of `straight-recipe-repositories' is used. If SOURCES is the
symbol `interactive', then the user is prompted to select a
recipe repository, and a list containing that recipe repository
is used for the value of SOURCES. ACTION may be `copy' (copy
recipe to the kill ring), `insert' (insert at point), or nil (no
action, just return it).

(fn &optional SOURCES ACTION)" t nil) (autoload (quote straight-visit-package-website) "straight" "Interactively select a recipe, and visit the package's website.

(fn)" t nil) (autoload (quote straight-use-package) "straight" "Register, clone, build, and activate a package and its dependencies.
This is the main entry point to the functionality of straight.el.

MELPA-STYLE-RECIPE is either a symbol naming a package, or a list
whose car is a symbol naming a package and whose cdr is a
property list containing e.g. `:type', `:local-repo', `:files',
and VC backend specific keywords.

First, the package recipe is registered with straight.el. If
NO-CLONE is a function, then it is called with two arguments: the
package name as a string, and a boolean value indicating whether
the local repository for the package is available. In that case,
the return value of the function is used as the value of NO-CLONE
instead. In any case, if NO-CLONE is non-nil, then processing
stops here.

Otherwise, the repository is cloned, if it is missing. If
NO-BUILD is a function, then it is called with one argument: the
package name as a string. In that case, the return value of the
function is used as the value of NO-BUILD instead. In any case,
if NO-BUILD is non-nil, then processing halts here. Otherwise,
the package is built and activated. Note that if the package
recipe has a non-nil `:no-build' entry, then NO-BUILD is ignored
and processing always stops before building and activation
occurs.

CAUSE is a string explaining the reason why
`straight-use-package' has been called. It is for internal use
only, and is used to construct progress messages. INTERACTIVE is
non-nil if the function has been called interactively. It is for
internal use only, and is used to determine whether to show a
hint about how to install the package permanently.

Return non-nil if package was actually installed, and nil
otherwise (this can only happen if NO-CLONE is non-nil).

(fn MELPA-STYLE-RECIPE &optional NO-CLONE NO-BUILD CAUSE INTERACTIVE)" t nil) (autoload (quote straight-register-package) "straight" "Register a package without cloning, building, or activating it.
This function is equivalent to calling `straight-use-package'
with a non-nil argument for NO-CLONE. It is provided for
convenience. MELPA-STYLE-RECIPE is as for
`straight-use-package'.

(fn MELPA-STYLE-RECIPE)" nil nil) (autoload (quote straight-use-package-no-build) "straight" "Register and clone a package without building it.
This function is equivalent to calling `straight-use-package'
with nil for NO-CLONE but a non-nil argument for NO-BUILD. It is
provided for convenience. MELPA-STYLE-RECIPE is as for
`straight-use-package'.

(fn MELPA-STYLE-RECIPE)" nil nil) (autoload (quote straight-use-package-lazy) "straight" "Register, build, and activate a package if it is already cloned.
This function is equivalent to calling `straight-use-package'
with symbol `lazy' for NO-CLONE. It is provided for convenience.
MELPA-STYLE-RECIPE is as for `straight-use-package'.

(fn MELPA-STYLE-RECIPE)" nil nil) (autoload (quote straight-use-recipes) "straight" "Register a recipe repository using MELPA-STYLE-RECIPE.
This registers the recipe and builds it if it is already cloned.
Note that you probably want the recipe for a recipe repository to
include a non-nil `:no-build' property, to unconditionally
inhibit the build phase.

This function also adds the recipe repository to
`straight-recipe-repositories', at the end of the list.

(fn MELPA-STYLE-RECIPE)" nil nil) (autoload (quote straight-override-recipe) "straight" "Register MELPA-STYLE-RECIPE as a recipe override.
This puts it in `straight-recipe-overrides', depending on the
value of `straight-current-profile'.

(fn MELPA-STYLE-RECIPE)" nil nil) (autoload (quote straight-check-package) "straight" "Rebuild a PACKAGE if it has been modified.
PACKAGE is a string naming a package. Interactively, select
PACKAGE from the known packages in the current Emacs session
using `completing-read'. See also `straight-rebuild-package' and
`straight-check-all'.

(fn PACKAGE)" t nil) (autoload (quote straight-check-all) "straight" "Rebuild any packages that have been modified.
See also `straight-rebuild-all' and `straight-check-package'.
This function should not be called during init.

(fn)" t nil) (autoload (quote straight-rebuild-package) "straight" "Rebuild a PACKAGE.
PACKAGE is a string naming a package. Interactively, select
PACKAGE from the known packages in the current Emacs session
using `completing-read'. With prefix argument RECURSIVE, rebuild
all dependencies as well. See also `straight-check-package' and
`straight-rebuild-all'.

(fn PACKAGE &optional RECURSIVE)" t nil) (autoload (quote straight-rebuild-all) "straight" "Rebuild all packages.
See also `straight-check-all' and `straight-rebuild-package'.

(fn)" t nil) (autoload (quote straight-prune-build-cache) "straight" "Prune the build cache.
This means that only packages that were built in the last init
run and subsequent interactive session will remain; other
packages will have their build mtime information and any cached
autoloads discarded.

(fn)" nil nil) (autoload (quote straight-prune-build-directory) "straight" "Prune the build directory.
This means that only packages that were built in the last init
run and subsequent interactive session will remain; other
packages will have their build directories deleted.

(fn)" nil nil) (autoload (quote straight-prune-build) "straight" "Prune the build cache and build directory.
This means that only packages that were built in the last init
run and subsequent interactive session will remain; other
packages will have their build mtime information discarded and
their build directories deleted.

(fn)" t nil) (autoload (quote straight-normalize-package) "straight" "Normalize a PACKAGE's local repository to its recipe's configuration.
PACKAGE is a string naming a package. Interactively, select
PACKAGE from the known packages in the current Emacs session
using `completing-read'.

(fn PACKAGE)" t nil) (autoload (quote straight-normalize-all) "straight" "Normalize all packages. See `straight-normalize-package'.
Return a list of recipes for packages that were not successfully
normalized. If multiple packages come from the same local
repository, only one is normalized.

PREDICATE, if provided, filters the packages that are normalized.
It is called with the package name as a string, and should return
non-nil if the package should actually be normalized.

(fn &optional PREDICATE)" t nil) (autoload (quote straight-fetch-package) "straight" "Try to fetch a PACKAGE from the primary remote.
PACKAGE is a string naming a package. Interactively, select
PACKAGE from the known packages in the current Emacs session
using `completing-read'. With prefix argument FROM-UPSTREAM,
fetch not just from primary remote but also from upstream (for
forked packages).

(fn PACKAGE &optional FROM-UPSTREAM)" t nil) (autoload (quote straight-fetch-package-and-deps) "straight" "Try to fetch a PACKAGE and its (transitive) dependencies.
PACKAGE, its dependencies, their dependencies, etc. are fetched
from their primary remotes.

PACKAGE is a string naming a package. Interactively, select
PACKAGE from the known packages in the current Emacs session
using `completing-read'. With prefix argument FROM-UPSTREAM,
fetch not just from primary remote but also from upstream (for
forked packages).

(fn PACKAGE &optional FROM-UPSTREAM)" t nil) (autoload (quote straight-fetch-all) "straight" "Try to fetch all packages from their primary remotes.
With prefix argument FROM-UPSTREAM, fetch not just from primary
remotes but also from upstreams (for forked packages).

Return a list of recipes for packages that were not successfully
fetched. If multiple packages come from the same local
repository, only one is fetched.

PREDICATE, if provided, filters the packages that are fetched. It
is called with the package name as a string, and should return
non-nil if the package should actually be fetched.

(fn &optional FROM-UPSTREAM PREDICATE)" t nil) (autoload (quote straight-merge-package) "straight" "Try to merge a PACKAGE from the primary remote.
PACKAGE is a string naming a package. Interactively, select
PACKAGE from the known packages in the current Emacs session
using `completing-read'. With prefix argument FROM-UPSTREAM,
merge not just from primary remote but also from upstream (for
forked packages).

(fn PACKAGE &optional FROM-UPSTREAM)" t nil) (autoload (quote straight-merge-package-and-deps) "straight" "Try to merge a PACKAGE and its (transitive) dependencies.
PACKAGE, its dependencies, their dependencies, etc. are merged
from their primary remotes.

PACKAGE is a string naming a package. Interactively, select
PACKAGE from the known packages in the current Emacs session
using `completing-read'. With prefix argument FROM-UPSTREAM,
merge not just from primary remote but also from upstream (for
forked packages).

(fn PACKAGE &optional FROM-UPSTREAM)" t nil) (autoload (quote straight-merge-all) "straight" "Try to merge all packages from their primary remotes.
With prefix argument FROM-UPSTREAM, merge not just from primary
remotes but also from upstreams (for forked packages).

Return a list of recipes for packages that were not successfully
merged. If multiple packages come from the same local
repository, only one is merged.

PREDICATE, if provided, filters the packages that are merged. It
is called with the package name as a string, and should return
non-nil if the package should actually be merged.

(fn &optional FROM-UPSTREAM PREDICATE)" t nil) (autoload (quote straight-pull-package) "straight" "Try to pull a PACKAGE from the primary remote.
PACKAGE is a string naming a package. Interactively, select
PACKAGE from the known packages in the current Emacs session
using `completing-read'. With prefix argument FROM-UPSTREAM, pull
not just from primary remote but also from upstream (for forked
packages).

(fn PACKAGE &optional FROM-UPSTREAM)" t nil) (autoload (quote straight-pull-package-and-deps) "straight" "Try to pull a PACKAGE and its (transitive) dependencies.
PACKAGE, its dependencies, their dependencies, etc. are pulled
from their primary remotes.

PACKAGE is a string naming a package. Interactively, select
PACKAGE from the known packages in the current Emacs session
using `completing-read'. With prefix argument FROM-UPSTREAM,
pull not just from primary remote but also from upstream (for
forked packages).

(fn PACKAGE &optional FROM-UPSTREAM)" t nil) (autoload (quote straight-pull-all) "straight" "Try to pull all packages from their primary remotes.
With prefix argument FROM-UPSTREAM, pull not just from primary
remotes but also from upstreams (for forked packages).

Return a list of recipes for packages that were not successfully
pulled. If multiple packages come from the same local repository,
only one is pulled.

PREDICATE, if provided, filters the packages that are pulled. It
is called with the package name as a string, and should return
non-nil if the package should actually be pulled.

(fn &optional FROM-UPSTREAM PREDICATE)" t nil) (autoload (quote straight-push-package) "straight" "Push a PACKAGE to its primary remote, if necessary.
PACKAGE is a string naming a package. Interactively, select
PACKAGE from the known packages in the current Emacs session
using `completing-read'.

(fn PACKAGE)" t nil) (autoload (quote straight-push-all) "straight" "Try to push all packages to their primary remotes.

Return a list of recipes for packages that were not successfully
pushed. If multiple packages come from the same local repository,
only one is pushed.

PREDICATE, if provided, filters the packages that are normalized.
It is called with the package name as a string, and should return
non-nil if the package should actually be normalized.

(fn &optional PREDICATE)" t nil) (autoload (quote straight-freeze-versions) "straight" "Write version lockfiles for currently activated packages.
This implies first pushing all packages that have unpushed local
changes. If the package management system has been used since the
last time the init-file was reloaded, offer to fix the situation
by reloading the init-file again. If FORCE is
non-nil (interactively, if a prefix argument is provided), skip
all checks and write the lockfile anyway.

Currently, writing version lockfiles requires cloning all lazily
installed packages. Hopefully, this inconvenient requirement will
be removed in the future.

Multiple lockfiles may be written (one for each profile),
according to the value of `straight-profiles'.

(fn &optional FORCE)" t nil) (autoload (quote straight-thaw-versions) "straight" "Read version lockfiles and restore package versions to those listed.

(fn)" t nil) (if (fboundp (quote register-definition-prefixes)) (register-definition-prefixes "straight" (quote ("straight-")))) (defvar straight-x-pinned-packages nil "List of pinned packages.") (if (fboundp (quote register-definition-prefixes)) (register-definition-prefixes "straight-x" (quote ("straight-x-")))) (provide (quote straight-autoloads))) "async" ((async-autoloads smtpmail-async dired-async async async-pkg async-bytecomp) (autoload (quote async-start-process) "async" "Start the executable PROGRAM asynchronously named NAME.  See `async-start'.
PROGRAM is passed PROGRAM-ARGS, calling FINISH-FUNC with the
process object when done.  If FINISH-FUNC is nil, the future
object will return the process object when the program is
finished.  Set DEFAULT-DIRECTORY to change PROGRAM's current
working directory.

(fn NAME PROGRAM FINISH-FUNC &rest PROGRAM-ARGS)" nil nil) (autoload (quote async-start) "async" "Execute START-FUNC (often a lambda) in a subordinate Emacs process.
When done, the return value is passed to FINISH-FUNC.  Example:

    (async-start
       ;; What to do in the child process
       (lambda ()
         (message \"This is a test\")
         (sleep-for 3)
         222)

       ;; What to do when it finishes
       (lambda (result)
         (message \"Async process done, result should be 222: %s\"
                  result)))

If FINISH-FUNC is nil or missing, a future is returned that can
be inspected using `async-get', blocking until the value is
ready.  Example:

    (let ((proc (async-start
                   ;; What to do in the child process
                   (lambda ()
                     (message \"This is a test\")
                     (sleep-for 3)
                     222))))

        (message \"I'm going to do some work here\") ;; ....

        (message \"Waiting on async process, result should be 222: %s\"
                 (async-get proc)))

If you don't want to use a callback, and you don't care about any
return value from the child process, pass the `ignore' symbol as
the second argument (if you don't, and never call `async-get', it
will leave *emacs* process buffers hanging around):

    (async-start
     (lambda ()
       (delete-file \"a remote file on a slow link\" nil))
     'ignore)

Note: Even when FINISH-FUNC is present, a future is still
returned except that it yields no value (since the value is
passed to FINISH-FUNC).  Call `async-get' on such a future always
returns nil.  It can still be useful, however, as an argument to
`async-ready' or `async-wait'.

(fn START-FUNC &optional FINISH-FUNC)" nil nil) (if (fboundp (quote register-definition-prefixes)) (register-definition-prefixes "async" (quote ("async-")))) (autoload (quote async-byte-recompile-directory) "async-bytecomp" "Compile all *.el files in DIRECTORY asynchronously.
All *.elc files are systematically deleted before proceeding.

(fn DIRECTORY &optional QUIET)" nil nil) (defvar async-bytecomp-package-mode nil "Non-nil if Async-Bytecomp-Package mode is enabled.
See the `async-bytecomp-package-mode' command
for a description of this minor mode.
Setting this variable directly does not take effect;
either customize it (see the info node `Easy Customization')
or call the function `async-bytecomp-package-mode'.") (custom-autoload (quote async-bytecomp-package-mode) "async-bytecomp" nil) (autoload (quote async-bytecomp-package-mode) "async-bytecomp" "Byte compile asynchronously packages installed with package.el.
Async compilation of packages can be controlled by
`async-bytecomp-allowed-packages'.

(fn &optional ARG)" t nil) (autoload (quote async-byte-compile-file) "async-bytecomp" "Byte compile Lisp code FILE asynchronously.

Same as `byte-compile-file' but asynchronous.

(fn FILE)" t nil) (if (fboundp (quote register-definition-prefixes)) (register-definition-prefixes "async-bytecomp" (quote ("async-byte")))) (defvar dired-async-mode nil "Non-nil if Dired-Async mode is enabled.
See the `dired-async-mode' command
for a description of this minor mode.
Setting this variable directly does not take effect;
either customize it (see the info node `Easy Customization')
or call the function `dired-async-mode'.") (custom-autoload (quote dired-async-mode) "dired-async" nil) (autoload (quote dired-async-mode) "dired-async" "Do dired actions asynchronously.

(fn &optional ARG)" t nil) (autoload (quote dired-async-do-copy) "dired-async" "Run \342\200\230dired-do-copy\342\200\231 asynchronously.

(fn &optional ARG)" t nil) (autoload (quote dired-async-do-symlink) "dired-async" "Run \342\200\230dired-do-symlink\342\200\231 asynchronously.

(fn &optional ARG)" t nil) (autoload (quote dired-async-do-hardlink) "dired-async" "Run \342\200\230dired-do-hardlink\342\200\231 asynchronously.

(fn &optional ARG)" t nil) (autoload (quote dired-async-do-rename) "dired-async" "Run \342\200\230dired-do-rename\342\200\231 asynchronously.

(fn &optional ARG)" t nil) (if (fboundp (quote register-definition-prefixes)) (register-definition-prefixes "dired-async" (quote ("dired-async-")))) (if (fboundp (quote register-definition-prefixes)) (register-definition-prefixes "smtpmail-async" (quote ("async-smtpmail-")))) (provide (quote async-autoloads))) "popup" ((popup-autoloads popup) (if (fboundp (quote register-definition-prefixes)) (register-definition-prefixes "popup" (quote ("popup-")))) (provide (quote popup-autoloads))) "helm-core" ((helm-core-autoloads helm-core-pkg helm-multi-match helm-source helm-lib helm) (autoload (quote helm-define-multi-key) "helm" "In KEYMAP, define key sequence KEY for function list FUNCTIONS.
Each function runs sequentially for each KEY press.
If DELAY is specified, switch back to initial function of FUNCTIONS list
after DELAY seconds.
The functions in FUNCTIONS list take no args.
E.g.
    (defun foo ()
      (interactive)
      (message \"Run foo\"))
    (defun bar ()
      (interactive)
      (message \"Run bar\"))
    (defun baz ()
      (interactive)
      (message \"Run baz\"))

(helm-define-multi-key global-map (kbd \"<f5> q\") '(foo bar baz) 2)

Each time \"<f5> q\" is pressed, the next function is executed.
Waiting more than 2 seconds between key presses switches back to
executing the first function on the next hit.

(fn KEYMAP KEY FUNCTIONS &optional DELAY)" nil nil) (autoload (quote helm-multi-key-defun) "helm" "Define NAME as a multi-key command running FUNS.
After DELAY seconds, the FUNS list is reinitialized.
See `helm-define-multi-key'.

(fn NAME DOCSTRING FUNS &optional DELAY)" nil t) (function-put (quote helm-multi-key-defun) (quote lisp-indent-function) (quote 2)) (autoload (quote helm-define-key-with-subkeys) "helm" "Define in MAP a KEY and SUBKEY to COMMAND.

This allows typing KEY to call COMMAND the first time and
type only SUBKEY on subsequent calls.

Arg MAP is the keymap to use, SUBKEY is the initial short
key binding to call COMMAND.

Arg OTHER-SUBKEYS is an alist specifying other short key bindings
to use once started, e.g.:

    (helm-define-key-with-subkeys global-map
       (kbd \"C-x v n\") ?n 'git-gutter:next-hunk
       '((?p . git-gutter:previous-hunk)))

In this example, `C-x v n' will run `git-gutter:next-hunk'
subsequent \"n\" will run this command again and subsequent \"p\"
will run `git-gutter:previous-hunk'.

If specified PROMPT can be displayed in minibuffer to describe
SUBKEY and OTHER-SUBKEYS.  Arg EXIT-FN specifies a function to run
on exit.

For any other key pressed, run their assigned command as defined
in MAP and then exit the loop running EXIT-FN, if specified.

NOTE: SUBKEY and OTHER-SUBKEYS bindings support only char syntax
and vectors, so don't use strings to define them.

(fn MAP KEY SUBKEY COMMAND &optional OTHER-SUBKEYS PROMPT EXIT-FN)" nil nil) (function-put (quote helm-define-key-with-subkeys) (quote lisp-indent-function) (quote 1)) (autoload (quote helm-debug-open-last-log) "helm" "Open Helm log file or buffer of last Helm session.

(fn)" t nil) (autoload (quote helm) "helm" "Main function to execute helm sources.

PLIST is a list like

(:key1 val1 :key2 val2 ...)

 or

(&optional sources input prompt resume preselect
            buffer keymap default history allow-nest).

** Keywords

Keywords supported:

- :sources
- :input
- :prompt
- :resume
- :preselect
- :buffer
- :keymap
- :default
- :history
- :allow-nest

Extra LOCAL-VARS keywords are supported, see the \"** Other
keywords\" section below.

Basic keywords are the following:

*** :sources

One of the following:

- List of sources
- Symbol whose value is a list of sources
- Alist representing a Helm source.
  - In this case the source has no name and is referenced in
    `helm-sources' as a whole alist.

*** :input

Initial input of minibuffer (temporary value of `helm-pattern')

*** :prompt

Minibuffer prompt. Default value is `helm--prompt'.

*** :resume

If t, allow resumption of the previous session of this Helm
command, skipping initialization.

If 'noresume, this instance of `helm' cannot be resumed.

*** :preselect

Initially selected candidate (string or regexp).

*** :buffer

Buffer name for this Helm session. `helm-buffer' will take this value.

*** :keymap

[Obsolete]

Keymap used at the start of this Helm session.

It is overridden by keymaps specified in sources, and is kept
only for backward compatibility.

Keymaps should be specified in sources using the :keymap slot
instead. See `helm-source'.

This keymap is not restored by `helm-resume'.

*** :default

Default value inserted into the minibuffer with
\\<minibuffer-local-map>\\[next-history-element].

It can be a string or a list of strings, in this case
\\<minibuffer-local-map>\\[next-history-element] cycles through
the list items, starting with the first.

If nil, `thing-at-point' is used.

If `helm--maybe-use-default-as-input' is non-nil, display is
updated using this value, unless :input is specified, in which
case that value is used instead.

*** :history

Minibuffer input, by default, is pushed to `minibuffer-history'.

When an argument HISTORY is provided, input is pushed to
HISTORY. HISTORY should be a valid symbol.

*** :allow-nest

Allow running this Helm command in a running Helm session.

** Other keywords

Other keywords are interpreted as local variables of this Helm
session. The `helm-' prefix can be omitted. For example,

(helm :sources 'helm-source-buffers-list
       :buffer \"*helm buffers*\"
       :candidate-number-limit 10)

Starts a Helm session with the variable
`helm-candidate-number-limit' set to 10.

** Backward compatibility

For backward compatibility, positional parameters are
supported:

(helm sources input prompt resume preselect
       buffer keymap default history allow-nest)

However, the use of non-keyword args is deprecated.

(fn &key SOURCES INPUT PROMPT RESUME PRESELECT BUFFER KEYMAP DEFAULT HISTORY ALLOW-NEST OTHER-LOCAL-VARS)" nil nil) (autoload (quote helm-cycle-resume) "helm" "Cycle in `helm-buffers' list and resume when waiting more than 1.2s.

(fn)" t nil) (autoload (quote helm-other-buffer) "helm" "Simplified Helm interface with other `helm-buffer'.
Call `helm' only with SOURCES and BUFFER as args.

(fn SOURCES BUFFER)" nil nil) (if (fboundp (quote register-definition-prefixes)) (register-definition-prefixes "helm" (quote ("helm-" "with-helm-")))) (if (fboundp (quote register-definition-prefixes)) (register-definition-prefixes "helm-lib" (quote ("helm-" "with-helm-")))) (if (fboundp (quote register-definition-prefixes)) (register-definition-prefixes "helm-multi-match" (quote ("helm-m")))) (if (fboundp (quote register-definition-prefixes)) (register-definition-prefixes "helm-source" (quote ("helm-")))) (provide (quote helm-core-autoloads))) "helm" ((helm-autoloads helm-pkg helm-x-files helm-utils helm-types helm-tags helm-sys helm-shell helm-semantic helm-ring helm-regexp helm-occur helm-net helm-mode helm-misc helm-man helm-locate helm-info helm-imenu helm-id-utils helm-help helm-grep helm-for-files helm-font helm-find helm-files helm-external helm-eval helm-eshell helm-elisp helm-elisp-package helm-easymenu helm-dabbrev helm-config helm-command helm-comint helm-color helm-buffers helm-bookmark helm-adaptive) (defvar helm-adaptive-mode nil "Non-nil if Helm-Adaptive mode is enabled.
See the `helm-adaptive-mode' command
for a description of this minor mode.
Setting this variable directly does not take effect;
either customize it (see the info node `Easy Customization')
or call the function `helm-adaptive-mode'.") (custom-autoload (quote helm-adaptive-mode) "helm-adaptive" nil) (autoload (quote helm-adaptive-mode) "helm-adaptive" "Toggle adaptive sorting in all sources.

(fn &optional ARG)" t nil) (autoload (quote helm-reset-adaptive-history) "helm-adaptive" "Delete all `helm-adaptive-history' and his file.
Useful when you have a old or corrupted
`helm-adaptive-history-file'.

(fn)" t nil) (if (fboundp (quote register-definition-prefixes)) (register-definition-prefixes "helm-adaptive" (quote ("helm-adapt")))) (autoload (quote helm-bookmarks) "helm-bookmark" "Preconfigured `helm' for bookmarks.

(fn)" t nil) (autoload (quote helm-filtered-bookmarks) "helm-bookmark" "Preconfigured `helm' for bookmarks (filtered by category).
Optional source `helm-source-bookmark-addressbook' is loaded only
if external addressbook-bookmark package is installed.

(fn)" t nil) (if (fboundp (quote register-definition-prefixes)) (register-definition-prefixes "helm-bookmark" (quote ("helm-" "bmkext-jump-" "bookmark")))) (autoload (quote helm-buffers-list) "helm-buffers" "Preconfigured `helm' to list buffers.

(fn)" t nil) (autoload (quote helm-mini) "helm-buffers" "Preconfigured `helm' displaying `helm-mini-default-sources'.

(fn)" t nil) (if (fboundp (quote register-definition-prefixes)) (register-definition-prefixes "helm-buffers" (quote ("helm-")))) (autoload (quote helm-colors) "helm-color" "Preconfigured `helm' for color.

(fn)" t nil) (if (fboundp (quote register-definition-prefixes)) (register-definition-prefixes "helm-color" (quote ("helm-")))) (autoload (quote helm-comint-prompts) "helm-comint" "Pre-configured `helm' to browse the prompts of the current comint buffer.

(fn)" t nil) (autoload (quote helm-comint-prompts-all) "helm-comint" "Pre-configured `helm' to browse the prompts of all comint sessions.

(fn)" t nil) (autoload (quote helm-comint-input-ring) "helm-comint" "Preconfigured `helm' that provide completion of `comint' history.

(fn)" t nil) (if (fboundp (quote register-definition-prefixes)) (register-definition-prefixes "helm-comint" (quote ("helm-")))) (autoload (quote helm-M-x) "helm-command" "Preconfigured `helm' for Emacs commands.
It is `helm' replacement of regular `M-x'
`execute-extended-command'.

Unlike regular `M-x' Emacs vanilla `execute-extended-command'
command, the prefix args if needed, can be passed AFTER starting
`helm-M-x'.  When a prefix arg is passed BEFORE starting
`helm-M-x', the first `C-u' while in `helm-M-x' session will
disable it.

You can get help on each command by persistent action.

(fn ARG)" t nil) (if (fboundp (quote register-definition-prefixes)) (register-definition-prefixes "helm-command" (quote ("helm-")))) (autoload (quote helm-configuration) "helm-config" "Customize Helm.

(fn)" t nil) (if (fboundp (quote register-definition-prefixes)) (register-definition-prefixes "helm-config" (quote ("helm-")))) (autoload (quote helm-dabbrev) "helm-dabbrev" "Preconfigured helm for dynamic abbreviations.

(fn)" t nil) (if (fboundp (quote register-definition-prefixes)) (register-definition-prefixes "helm-dabbrev" (quote ("helm-dabbrev-")))) (autoload (quote helm-lisp-completion-at-point) "helm-elisp" "Preconfigured Helm for Lisp symbol completion at point.

(fn)" t nil) (autoload (quote helm-complete-file-name-at-point) "helm-elisp" "Preconfigured Helm to complete file name at point.

(fn &optional FORCE)" t nil) (autoload (quote helm-lisp-indent) "helm-elisp" "

(fn)" t nil) (autoload (quote helm-lisp-completion-or-file-name-at-point) "helm-elisp" "Preconfigured Helm to complete Lisp symbol or filename at point.
Filename completion happens if string start after or between a
double quote.

(fn)" t nil) (autoload (quote helm-apropos) "helm-elisp" "Preconfigured Helm to describe commands, functions, variables and faces.
In non interactives calls DEFAULT argument should be provided as
a string, i.e. the `symbol-name' of any existing symbol.

(fn DEFAULT)" t nil) (autoload (quote helm-manage-advice) "helm-elisp" "Preconfigured `helm' to disable/enable function advices.

(fn)" t nil) (autoload (quote helm-locate-library) "helm-elisp" "Preconfigured helm to locate elisp libraries.

(fn)" t nil) (autoload (quote helm-timers) "helm-elisp" "Preconfigured `helm' for timers.

(fn)" t nil) (autoload (quote helm-complex-command-history) "helm-elisp" "Preconfigured `helm' for complex command history.

(fn)" t nil) (if (fboundp (quote register-definition-prefixes)) (register-definition-prefixes "helm-elisp" (quote ("helm-" "with-helm-show-completion")))) (autoload (quote helm-list-elisp-packages) "helm-elisp-package" "Preconfigured `helm' for listing and handling Emacs packages.

(fn ARG)" t nil) (autoload (quote helm-list-elisp-packages-no-fetch) "helm-elisp-package" "Preconfigured Helm for Emacs packages.

Same as `helm-list-elisp-packages' but don't fetch packages on
remote.  Called with a prefix ARG always fetch packages on
remote.

(fn ARG)" t nil) (if (fboundp (quote register-definition-prefixes)) (register-definition-prefixes "helm-elisp-package" (quote ("helm-")))) (autoload (quote helm-esh-pcomplete) "helm-eshell" "Preconfigured `helm' to provide Helm completion in Eshell.

(fn)" t nil) (autoload (quote helm-eshell-history) "helm-eshell" "Preconfigured Helm for Eshell history.

(fn)" t nil) (autoload (quote helm-eshell-prompts) "helm-eshell" "Pre-configured `helm' to browse the prompts of the current Eshell.

(fn)" t nil) (autoload (quote helm-eshell-prompts-all) "helm-eshell" "Pre-configured `helm' to browse the prompts of all Eshell sessions.

(fn)" t nil) (if (fboundp (quote register-definition-prefixes)) (register-definition-prefixes "helm-eshell" (quote ("helm-e")))) (autoload (quote helm-eval-expression) "helm-eval" "Preconfigured `helm' for `helm-source-evaluation-result'.

(fn ARG)" t nil) (autoload (quote helm-eval-expression-with-eldoc) "helm-eval" "Preconfigured `helm' for `helm-source-evaluation-result' with `eldoc' support.

(fn)" t nil) (autoload (quote helm-calcul-expression) "helm-eval" "Preconfigured `helm' for `helm-source-calculation-result'.

(fn)" t nil) (if (fboundp (quote register-definition-prefixes)) (register-definition-prefixes "helm-eval" (quote ("helm-")))) (autoload (quote helm-run-external-command) "helm-external" "Preconfigured `helm' to run External PROGRAM asyncronously from Emacs.
If program is already running exit with error.
You can set your own list of commands with
`helm-external-commands-list'.

(fn PROGRAM)" t nil) (if (fboundp (quote register-definition-prefixes)) (register-definition-prefixes "helm-external" (quote ("helm-")))) (defvar helm-ff-cache-mode nil "Non-nil if Helm-Ff-Cache mode is enabled.
See the `helm-ff-cache-mode' command
for a description of this minor mode.
Setting this variable directly does not take effect;
either customize it (see the info node `Easy Customization')
or call the function `helm-ff-cache-mode'.") (custom-autoload (quote helm-ff-cache-mode) "helm-files" nil) (autoload (quote helm-ff-cache-mode) "helm-files" "Auto refresh `helm-find-files' cache when emacs is idle.

You will probably don't want to start this mode directly but instead
customize `helm-ff-keep-cached-candidates' to a non nil value to
enable it.
With `helm-ff-keep-cached-candidates' set to a nil value the mode will
disable itself.

When Emacs is idle, refresh the cache all the
`helm-ff-refresh-cache-delay' seconds then stop when done or after
`helm-ff-cache-mode-max-idle-time' if emacs is still idle.

(fn &optional ARG)" t nil) (autoload (quote helm-projects-history) "helm-files" "

(fn ARG)" t nil) (autoload (quote helm-browse-project) "helm-files" "Preconfigured helm to browse projects.
Browse files and see status of project with its VCS.
Only HG and GIT are supported for now.
Fall back to `helm-browse-project-find-files' if current
directory is not under control of one of those VCS.
With a prefix ARG browse files recursively, with two prefix ARG
rebuild the cache.
If the current directory is found in the cache, start
`helm-browse-project-find-files' even with no prefix ARG.
NOTE: The prefix ARG have no effect on the VCS controlled
directories.

Needed dependencies for VCS:
<https://github.com/emacs-helm/helm-ls-git>
and
<https://github.com/emacs-helm/helm-ls-hg>.

(fn ARG)" t nil) (autoload (quote helm-find-files) "helm-files" "Preconfigured `helm' for helm implementation of `find-file'.
Called with a prefix arg show history if some.
Don't call it from programs, use `helm-find-files-1' instead.
This is the starting point for nearly all actions you can do on
files.

(fn ARG)" t nil) (autoload (quote helm-delete-tramp-connection) "helm-files" "Allow deleting tramp connection or marked tramp connections at once.

This replace `tramp-cleanup-connection' which is partially broken
in Emacs < to 25.1.50.1 (See Emacs Bug#24432).

It allows additionally to delete more than one connection at
once.

(fn)" t nil) (if (fboundp (quote register-definition-prefixes)) (register-definition-prefixes "helm-files" (quote ("helm-" "eshell-command-aliases-list")))) (autoload (quote helm-find) "helm-find" "Preconfigured `helm' for the find shell command.

Recursively find files whose names are matched by all specified
globbing PATTERNs under the current directory using the external
program specified in `find-program' (usually \"find\").  Every
input PATTERN is silently wrapped into two stars: *PATTERN*.

With prefix argument, prompt for a directory to search.

When user option `helm-findutils-search-full-path' is non-nil,
match against complete paths, otherwise, against file names
without directory part.

The (possibly empty) list of globbing PATTERNs can be followed by
the separator \"*\" plus any number of additional arguments that
are passed to \"find\" literally.

(fn ARG)" t nil) (if (fboundp (quote register-definition-prefixes)) (register-definition-prefixes "helm-find" (quote ("helm-")))) (autoload (quote helm-select-xfont) "helm-font" "Preconfigured `helm' to select Xfont.

(fn)" t nil) (autoload (quote helm-ucs) "helm-font" "Preconfigured `helm' for `ucs-names'.

Called with a prefix arg force reloading cache.

(fn ARG)" t nil) (if (fboundp (quote register-definition-prefixes)) (register-definition-prefixes "helm-font" (quote ("helm-")))) (autoload (quote helm-for-files) "helm-for-files" "Preconfigured `helm' for opening files.
Run all sources defined in `helm-for-files-preferred-list'.

(fn)" t nil) (autoload (quote helm-multi-files) "helm-for-files" "Preconfigured helm like `helm-for-files' but running locate only on demand.

Allow toggling back and forth from locate to others sources with
`helm-multi-files-toggle-locate-binding' key.
This avoids launching locate needlessly when what you are
searching for is already found.

(fn)" t nil) (autoload (quote helm-recentf) "helm-for-files" "Preconfigured `helm' for `recentf'.

(fn)" t nil) (if (fboundp (quote register-definition-prefixes)) (register-definition-prefixes "helm-for-files" (quote ("helm-")))) (autoload (quote helm-goto-precedent-file) "helm-grep" "Go to previous file in Helm grep/etags buffers.

(fn)" t nil) (autoload (quote helm-goto-next-file) "helm-grep" "Go to previous file in Helm grep/etags buffers.

(fn)" t nil) (autoload (quote helm-do-grep-ag) "helm-grep" "Preconfigured `helm' for grepping with AG in `default-directory'.
With prefix arg prompt for type if available with your AG
version.

(fn ARG)" t nil) (autoload (quote helm-grep-do-git-grep) "helm-grep" "Preconfigured `helm' for git-grepping `default-directory'.
With a prefix arg ARG git-grep the whole repository.

(fn ARG)" t nil) (if (fboundp (quote register-definition-prefixes)) (register-definition-prefixes "helm-grep" (quote ("helm-")))) (autoload (quote helm-documentation) "helm-help" "Preconfigured `helm' for Helm documentation.
With a prefix arg refresh the documentation.

Find here the documentation of all documented sources.

(fn)" t nil) (defvar helm-comp-read-mode-line "\\<helm-comp-read-map>C/\\[helm-cr-empty-string]:Empty \\<helm-map>\\[helm-help]:Help \\[helm-select-action]:Act \\[helm-maybe-exit-minibuffer]/f1/f2/f-n:NthAct \\[helm-toggle-suspend-update]:Tog.suspend \\[helm-customize-group]:Conf") (defvar helm-read-file-name-mode-line-string "\\<helm-read-file-map>\\[helm-help]:Help C/\\[helm-cr-empty-string]:Empty \\<helm-map>\\[helm-select-action]:Act \\[helm-maybe-exit-minibuffer]/f1/f2/f-n:NthAct \\[helm-toggle-suspend-update]:Tog.suspend \\[helm-customize-group]:Conf" "String displayed in mode-line in `helm-source-find-files'.") (defvar helm-top-mode-line "\\<helm-top-map>\\[helm-help]:Help \\<helm-map>\\[helm-select-action]:Act \\[helm-maybe-exit-minibuffer]/f1/f2/f-n:NthAct \\[helm-toggle-suspend-update]:Tog.suspend \\[helm-customize-group]:Conf") (if (fboundp (quote register-definition-prefixes)) (register-definition-prefixes "helm-help" (quote ("helm-")))) (autoload (quote helm-gid) "helm-id-utils" "Preconfigured `helm' for `gid' command line of `ID-Utils'.
Need A database created with the command `mkid' above
`default-directory'.
Need id-utils as dependency which provide `mkid', `gid' etc..
See <https://www.gnu.org/software/idutils/>.

(fn)" t nil) (if (fboundp (quote register-definition-prefixes)) (register-definition-prefixes "helm-id-utils" (quote ("helm-gid-")))) (autoload (quote helm-imenu) "helm-imenu" "Preconfigured `helm' for `imenu'.

(fn)" t nil) (autoload (quote helm-imenu-in-all-buffers) "helm-imenu" "Preconfigured `helm' for fetching imenu entries in all buffers with similar mode as current.
A mode is similar as current if it is the same, it is derived
i.e. `derived-mode-p' or it have an association in
`helm-imenu-all-buffer-assoc'.

(fn)" t nil) (if (fboundp (quote register-definition-prefixes)) (register-definition-prefixes "helm-imenu" (quote ("helm-")))) (autoload (quote helm-info) "helm-info" "Preconfigured `helm' for searching Info files' indices.

With a prefix argument \\[universal-argument], set REFRESH to
non-nil.

Optional parameter REFRESH, when non-nil, re-evaluates
`helm-default-info-index-list'.  If the variable has been
customized, set it to its saved value.  If not, set it to its
standard value. See `custom-reevaluate-setting' for more.

REFRESH is useful when new Info files are installed.  If
`helm-default-info-index-list' has not been customized, the new
Info files are made available.

(fn &optional REFRESH)" t nil) (autoload (quote helm-info-at-point) "helm-info" "Preconfigured `helm' for searching info at point.

(fn)" t nil) (if (fboundp (quote register-definition-prefixes)) (register-definition-prefixes "helm-info" (quote ("helm-")))) (autoload (quote helm-projects-find-files) "helm-locate" "Find files with locate in `helm-locate-project-list'.
With a prefix arg refresh the database in each project.

(fn UPDATE)" t nil) (autoload (quote helm-locate) "helm-locate" "Preconfigured `helm' for Locate.
Note: you can add locate options after entering pattern.
See 'man locate' for valid options and also `helm-locate-command'.

You can specify a local database with prefix argument ARG.
With two prefix arg, refresh the current local db or create it if
it doesn't exists.

To create a user specific db, use
\"updatedb -l 0 -o db_path -U directory\".
Where db_path is a filename matched by
`helm-locate-db-file-regexp'.

(fn ARG)" t nil) (if (fboundp (quote register-definition-prefixes)) (register-definition-prefixes "helm-locate" (quote ("helm-")))) (autoload (quote helm-man-woman) "helm-man" "Preconfigured `helm' for Man and Woman pages.
With a prefix arg reinitialize the cache.

(fn ARG)" t nil) (if (fboundp (quote register-definition-prefixes)) (register-definition-prefixes "helm-man" (quote ("helm-")))) (autoload (quote helm-world-time) "helm-misc" "Preconfigured `helm' to show world time.
Default action change TZ environment variable locally to emacs.

(fn)" t nil) (autoload (quote helm-insert-latex-math) "helm-misc" "Preconfigured helm for latex math symbols completion.

(fn)" t nil) (autoload (quote helm-ratpoison-commands) "helm-misc" "Preconfigured `helm' to execute ratpoison commands.

(fn)" t nil) (autoload (quote helm-stumpwm-commands) "helm-misc" "Preconfigured helm for stumpwm commands.

(fn)" t nil) (autoload (quote helm-minibuffer-history) "helm-misc" "Preconfigured `helm' for `minibuffer-history'.

(fn)" t nil) (if (fboundp (quote register-definition-prefixes)) (register-definition-prefixes "helm-misc" (quote ("helm-")))) (autoload (quote helm-comp-read) "helm-mode" "Read a string in the minibuffer, with helm completion.

It is helm `completing-read' equivalent.

- PROMPT is the prompt name to use.

- COLLECTION can be a list, vector, obarray or hash-table.
  It can be also a function that receives three arguments:
  the values string, predicate and t. See `all-completions' for more details.

Keys description:

- TEST: A predicate called with one arg i.e candidate.

- INITIAL-INPUT: Same as input arg in `helm'.

- PRESELECT: See preselect arg of `helm'.

- DEFAULT: This option is used only for compatibility with regular
  Emacs `completing-read' (Same as DEFAULT arg of `completing-read').

- BUFFER: Name of helm-buffer.

- MUST-MATCH: Candidate selected must be one of COLLECTION.

- FUZZY: Enable fuzzy matching.

- REVERSE-HISTORY: When non--nil display history source after current
  source completion.

- REQUIRES-PATTERN: Same as helm attribute, default is 0.

- HISTORY: A list containing specific history, default is nil.
  When it is non--nil, all elements of HISTORY are displayed in
  a special source before COLLECTION.

- INPUT-HISTORY: A symbol. The minibuffer input history will be
  stored there, if nil or not provided, `minibuffer-history'
  will be used instead.

- CASE-FOLD: Same as `helm-case-fold-search'.

- DEL-INPUT: Boolean, when non--nil (default) remove the partial
  minibuffer input from HISTORY is present.

- PERSISTENT-ACTION: A function called with one arg i.e candidate.

- PERSISTENT-HELP: A string to document PERSISTENT-ACTION.

- MODE-LINE: A string or list to display in mode line.
  Default is `helm-comp-read-mode-line'.

- KEYMAP: A keymap to use in this `helm-comp-read'.
  (the keymap will be shared with history source)

- NAME: The name related to this local source.

- HEADER-NAME: A function to alter NAME, see `helm'.

- EXEC-WHEN-ONLY-ONE: Bound `helm-execute-action-at-once-if-one'
  to non--nil. (possibles values are t or nil).

- VOLATILE: Use volatile attribute.

- SORT: A predicate to give to `sort' e.g `string-lessp'
  Use this only on small data as it is inefficient.
  If you want to sort faster add a sort function to
  FC-TRANSFORMER.
  Note that FUZZY when enabled is already providing a sort function.

- FC-TRANSFORMER: A `filtered-candidate-transformer' function
  or a list of functions.

- HIST-FC-TRANSFORMER: A `filtered-candidate-transformer'
  function for the history source.

- MARKED-CANDIDATES: If non--nil return candidate or marked candidates as a list.

- NOMARK: When non--nil don't allow marking candidates.

- ALISTP: (default is non--nil) See `helm-comp-read-get-candidates'.

- CANDIDATES-IN-BUFFER: when non--nil use a source build with
  `helm-source-in-buffer' which is much faster.
  Argument VOLATILE have no effect when CANDIDATES-IN-BUFFER is non--nil.

- MATCH-PART: Allow matching only one part of candidate.
  See match-part documentation in `helm-source'.

- MATCH-DYNAMIC: See match-dynamic in `helm-source-sync'
  It has no effect when used with CANDIDATES-IN-BUFFER.

- ALLOW-NEST: Allow nesting this `helm-comp-read' in a helm session.
  See `helm'.

- MULTILINE: See multiline in `helm-source'.

- COERCE: See coerce in `helm-source'.

- GROUP: See group in `helm-source'.

Any prefix args passed during `helm-comp-read' invocation will be recorded
in `helm-current-prefix-arg', otherwise if prefix args were given before
`helm-comp-read' invocation, the value of `current-prefix-arg' will be used.
That means you can pass prefix args before or after calling a command
that use `helm-comp-read'.  See `helm-M-x' for example.

(fn PROMPT COLLECTION &key TEST INITIAL-INPUT DEFAULT PRESELECT (BUFFER \"*Helm Completions*\") MUST-MATCH FUZZY REVERSE-HISTORY (REQUIRES-PATTERN 0) HISTORY INPUT-HISTORY (CASE-FOLD helm-comp-read-case-fold-search) (DEL-INPUT t) (PERSISTENT-ACTION nil) (PERSISTENT-HELP \"DoNothing\") (MODE-LINE helm-comp-read-mode-line) HELP-MESSAGE (KEYMAP helm-comp-read-map) (NAME \"Helm Completions\") HEADER-NAME CANDIDATES-IN-BUFFER MATCH-PART MATCH-DYNAMIC EXEC-WHEN-ONLY-ONE QUIT-WHEN-NO-CAND (VOLATILE t) SORT FC-TRANSFORMER HIST-FC-TRANSFORMER MARKED-CANDIDATES NOMARK (ALISTP t) (CANDIDATE-NUMBER-LIMIT helm-candidate-number-limit) MULTILINE ALLOW-NEST COERCE (GROUP \\='helm))" nil nil) (autoload (quote helm-read-file-name) "helm-mode" "Read a file name with helm completion.
It is helm `read-file-name' emulation.

Argument PROMPT is the default prompt to use.

Keys description:

- NAME: Source name, default to \"Read File Name\".

- INITIAL-INPUT: Where to start reading file name, default to `default-directory'.

- BUFFER: `helm-buffer' name, defaults to \"*Helm Completions*\".

- TEST: A predicate called with one arg 'candidate'.

- NORET: Allow disabling helm-ff-RET (have no effect if helm-ff-RET
                                      isn't bound to RET).

- CASE-FOLD: Same as `helm-case-fold-search'.

- PRESELECT: helm preselection.

- HISTORY: Display HISTORY in a special source.

- MUST-MATCH: Can be 'confirm, nil, or t.

- FUZZY: Enable fuzzy matching when non-nil (Enabled by default).

- MARKED-CANDIDATES: When non--nil return a list of marked candidates.

- NOMARK: When non--nil don't allow marking candidates.

- ALISTP: Don't use `all-completions' in history (take effect only on history).

- PERSISTENT-ACTION-IF: a persistent if action function.

- PERSISTENT-HELP: persistent help message.

- MODE-LINE: A mode line message, default is `helm-read-file-name-mode-line-string'.

(fn PROMPT &key (NAME \"Read File Name\") (INITIAL-INPUT default-directory) (BUFFER \"*Helm file completions*\") TEST NORET (CASE-FOLD helm-file-name-case-fold-search) PRESELECT HISTORY MUST-MATCH (FUZZY t) DEFAULT MARKED-CANDIDATES (CANDIDATE-NUMBER-LIMIT helm-ff-candidate-number-limit) NOMARK (ALISTP t) (PERSISTENT-ACTION-IF \\='helm-find-files-persistent-action-if) (PERSISTENT-HELP \"Hit1 Expand Candidate, Hit2 or (C-u) Find file\") (MODE-LINE helm-read-file-name-mode-line-string))" nil nil) (defvar helm-mode nil "Non-nil if Helm mode is enabled.
See the `helm-mode' command
for a description of this minor mode.
Setting this variable directly does not take effect;
either customize it (see the info node `Easy Customization')
or call the function `helm-mode'.") (custom-autoload (quote helm-mode) "helm-mode" nil) (autoload (quote helm-mode) "helm-mode" "Toggle generic helm completion.

All functions in Emacs that use `completing-read',
`read-file-name', `completion-in-region' and friends will use helm
interface when this mode is turned on.

However you can modify this behavior for functions of your choice
with `helm-completing-read-handlers-alist'.

Called with a positive arg, turn on unconditionally, with a
negative arg turn off.
You can toggle it with M-x `helm-mode'.

About `ido-mode':
DO NOT enable `ido-everywhere' when using `helm-mode'.  Instead of
using `ido-mode', add the commands where you want to use ido to
`helm-completing-read-handlers-alist' with `ido' as value.

Note: This mode is incompatible with Emacs23.

(fn &optional ARG)" t nil) (if (fboundp (quote register-definition-prefixes)) (register-definition-prefixes "helm-mode" (quote ("helm-")))) (autoload (quote helm-browse-url-firefox) "helm-net" "Same as `browse-url-firefox' but detach from Emacs.

So when you quit Emacs you can keep your Firefox session open and
not be prompted to kill the Firefox process.

NOTE: Probably not supported on some systems (e.g., Windows).

(fn URL &optional IGNORE)" t nil) (autoload (quote helm-browse-url-opera) "helm-net" "Browse URL with Opera browser and detach from Emacs.

So when you quit Emacs you can keep your Opera session open and
not be prompted to kill the Opera process.

NOTE: Probably not supported on some systems (e.g., Windows).

(fn URL &optional IGNORE)" t nil) (autoload (quote helm-browse-url-chromium) "helm-net" "Browse URL with Google Chrome browser.

(fn URL &optional IGNORE)" t nil) (autoload (quote helm-browse-url-uzbl) "helm-net" "Browse URL with uzbl browser.

(fn URL &optional IGNORE)" t nil) (autoload (quote helm-browse-url-conkeror) "helm-net" "Browse URL with conkeror browser.

(fn URL &optional IGNORE)" t nil) (autoload (quote helm-browse-url-next) "helm-net" "Browse URL with next browser.

(fn URL &optional IGNORE)" t nil) (autoload (quote helm-surfraw) "helm-net" "Preconfigured `helm' to search PATTERN with search ENGINE.

(fn PATTERN ENGINE)" t nil) (autoload (quote helm-google-suggest) "helm-net" "Preconfigured `helm' for Google search with Google suggest.

(fn)" t nil) (if (fboundp (quote register-definition-prefixes)) (register-definition-prefixes "helm-net" (quote ("helm-")))) (autoload (quote helm-occur) "helm-occur" "Preconfigured helm for searching lines matching pattern in `current-buffer'.

When `helm-source-occur' is member of
`helm-sources-using-default-as-input' which is the default,
symbol at point is searched at startup.

When a region is marked search only in this region by narrowing.

To search in multiples buffers start from one of the commands listing
buffers (i.e. a helm command using `helm-source-buffers-list' like
`helm-mini') and use the multi occur buffers action.

This is the helm implementation that collect lines matching pattern
like vanilla Emacs `occur' but have nothing to do with it, the search
engine beeing completely different and also much faster.

(fn)" t nil) (autoload (quote helm-occur-visible-buffers) "helm-occur" "Run helm-occur on all visible buffers in frame.

(fn)" t nil) (autoload (quote helm-occur-from-isearch) "helm-occur" "Invoke `helm-occur' from isearch.

To use this bind it to a key in `isearch-mode-map'.

(fn)" t nil) (autoload (quote helm-multi-occur-from-isearch) "helm-occur" "Invoke `helm-multi-occur' from isearch.

With a prefix arg, reverse the behavior of
`helm-moccur-always-search-in-current'.
The prefix arg can be set before calling
`helm-multi-occur-from-isearch' or during the buffer selection.

To use this bind it to a key in `isearch-mode-map'.

(fn)" t nil) (if (fboundp (quote register-definition-prefixes)) (register-definition-prefixes "helm-occur" (quote ("helm-")))) (autoload (quote helm-regexp) "helm-regexp" "Preconfigured helm to build regexps.
`query-replace-regexp' can be run from there against found regexp.

(fn)" t nil) (if (fboundp (quote register-definition-prefixes)) (register-definition-prefixes "helm-regexp" (quote ("helm-")))) (autoload (quote helm-mark-ring) "helm-ring" "Preconfigured `helm' for `helm-source-mark-ring'.

(fn)" t nil) (autoload (quote helm-global-mark-ring) "helm-ring" "Preconfigured `helm' for `helm-source-global-mark-ring'.

(fn)" t nil) (autoload (quote helm-all-mark-rings) "helm-ring" "Preconfigured `helm' for `helm-source-global-mark-ring' and `helm-source-mark-ring'.

(fn)" t nil) (autoload (quote helm-register) "helm-ring" "Preconfigured `helm' for Emacs registers.

(fn)" t nil) (autoload (quote helm-show-kill-ring) "helm-ring" "Preconfigured `helm' for `kill-ring'.
It is drop-in replacement of `yank-pop'.

First call open the kill-ring browser, next calls move to next line.

(fn)" t nil) (autoload (quote helm-execute-kmacro) "helm-ring" "Preconfigured helm for keyboard macros.
Define your macros with `f3' and `f4'.
See (info \"(emacs) Keyboard Macros\") for detailed infos.
This command is useful when used with persistent action.

(fn)" t nil) (if (fboundp (quote register-definition-prefixes)) (register-definition-prefixes "helm-ring" (quote ("helm-")))) (autoload (quote helm-semantic) "helm-semantic" "Preconfigured `helm' for `semantic'.
If ARG is supplied, pre-select symbol at point instead of current.

(fn ARG)" t nil) (autoload (quote helm-semantic-or-imenu) "helm-semantic" "Preconfigured helm for `semantic' or `imenu'.
If ARG is supplied, pre-select symbol at point instead of current
semantic tag in scope.

If `semantic-mode' is active in the current buffer, then use
semantic for generating tags, otherwise fall back to `imenu'.
Fill in the symbol at point by default.

(fn ARG)" t nil) (if (fboundp (quote register-definition-prefixes)) (register-definition-prefixes "helm-semantic" (quote ("helm-s")))) (defalias (quote helm-shell-prompts) (quote helm-comint-prompts)) (defalias (quote helm-shell-prompts-all) (quote helm-comint-prompts-all)) (defvar helm-top-poll-mode nil "Non-nil if Helm-Top-Poll mode is enabled.
See the `helm-top-poll-mode' command
for a description of this minor mode.
Setting this variable directly does not take effect;
either customize it (see the info node `Easy Customization')
or call the function `helm-top-poll-mode'.") (custom-autoload (quote helm-top-poll-mode) "helm-sys" nil) (autoload (quote helm-top-poll-mode) "helm-sys" "Refresh automatically helm top buffer once enabled.

(fn &optional ARG)" t nil) (autoload (quote helm-top) "helm-sys" "Preconfigured `helm' for top command.

(fn)" t nil) (autoload (quote helm-list-emacs-process) "helm-sys" "Preconfigured `helm' for Emacs process.

(fn)" t nil) (autoload (quote helm-xrandr-set) "helm-sys" "Preconfigured helm for xrandr.

(fn)" t nil) (if (fboundp (quote register-definition-prefixes)) (register-definition-prefixes "helm-sys" (quote ("helm-")))) (autoload (quote helm-etags-select) "helm-tags" "Preconfigured helm for etags.
If called with a prefix argument REINIT
or if any of the tag files have been modified, reinitialize cache.

This function aggregates three sources of tag files:

  1) An automatically located file in the parent directories,
     by `helm-etags-get-tag-file'.
  2) `tags-file-name', which is commonly set by `find-tag' command.
  3) `tags-table-list' which is commonly set by `visit-tags-table' command.

(fn REINIT)" t nil) (if (fboundp (quote register-definition-prefixes)) (register-definition-prefixes "helm-tags" (quote ("helm-")))) (if (fboundp (quote register-definition-prefixes)) (register-definition-prefixes "helm-types" (quote ("helm-")))) (defvar helm-popup-tip-mode nil "Non-nil if Helm-Popup-Tip mode is enabled.
See the `helm-popup-tip-mode' command
for a description of this minor mode.
Setting this variable directly does not take effect;
either customize it (see the info node `Easy Customization')
or call the function `helm-popup-tip-mode'.") (custom-autoload (quote helm-popup-tip-mode) "helm-utils" nil) (autoload (quote helm-popup-tip-mode) "helm-utils" "Show help-echo informations in a popup tip at end of line.

(fn &optional ARG)" t nil) (if (fboundp (quote register-definition-prefixes)) (register-definition-prefixes "helm-utils" (quote ("helm-" "with-helm-display-marked-candidates")))) (if (fboundp (quote register-definition-prefixes)) (register-definition-prefixes "helm-x-files" (quote ("helm-")))) (provide (quote helm-autoloads)))))

#s(hash-table size 65 test eq rehash-size 1.5 rehash-threshold 0.8125 data (org-elpa #s(hash-table size 65 test equal rehash-size 1.5 rehash-threshold 0.8125 data (version 1 "melpa" nil "gnu-elpa-mirror" nil "emacsmirror-mirror" nil "straight" nil "helm" nil "async" nil "popup" nil "cl-lib" nil "helm-core" nil)) melpa #s(hash-table size 65 test equal rehash-size 1.5 rehash-threshold 0.8125 data (version 2 "gnu-elpa-mirror" nil "emacsmirror-mirror" nil "straight" nil "helm" (helm :type git :flavor melpa :files ("*.el" "emacs-helm.sh" (:exclude "helm.el" "helm-lib.el" "helm-source.el" "helm-multi-match.el" "helm-core-pkg.el") "helm-pkg.el") :host github :repo "emacs-helm/helm") "async" (async :type git :flavor melpa :host github :repo "jwiegley/emacs-async") "popup" (popup :type git :flavor melpa :files ("popup.el" "popup-pkg.el") :host github :repo "auto-complete/popup-el") "cl-lib" nil "helm-core" (helm-core :type git :flavor melpa :files ("helm-core-pkg.el" "helm.el" "helm-lib.el" "helm-source.el" "helm-multi-match.el" "helm-core-pkg.el") :host github :repo "emacs-helm/helm"))) gnu-elpa-mirror #s(hash-table size 65 test equal rehash-size 1.5 rehash-threshold 0.8125 data (version 3 "emacsmirror-mirror" nil "straight" nil "cl-lib" nil)) emacsmirror-mirror #s(hash-table size 65 test equal rehash-size 1.5 rehash-threshold 0.8125 data (version 2 "straight" (straight :type git :host github :repo "emacsmirror/straight") "cl-lib" nil))))

("org-elpa" "melpa" "gnu-elpa-mirror" "emacsmirror-mirror" "straight" "emacs" "helm" "async" "popup" "cl-lib" "helm-core")

t
