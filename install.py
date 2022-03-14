import os


class Dotfiles:
    files = []
    ignore_list = [
        'README', 'install.py', '.gitignore', '.gitmodules',
    ]
    installed_list = []
    home_path = None
    dotfile_source_path = None

    def get_dotfiles(self):

        for filename in os.listdir(self.dotfile_source_path):
            file_path = os.path.join(self.dotfile_source_path, filename)

            if filename in self.ignore_list:
                continue

            if os.path.isfile(file_path):
                self.files.append(filename)

    def show_dotfiles(self):

        print('\nDetected dotfiles to install (via interactive install), folders ignored:')

        for file in self.files:
            print('- %s' % file)

    def install(self):

        if len(self.files) == 0:
            print('No files detected to install!')
            quit()

        print('\nBeginning interactive installation...')

        for file in self.files:
            i = input('\nCreate a symbolic link to %s? [y/N]' % file)

            if i != 'y':
                print(' X Not installed, skipping.')
                continue

            # create symlink
            src = os.path.join(self.dotfile_source_path, file)
            dst = os.path.join(self.home_path, file)

            try:
                os.symlink(src, dst)
                self.installed_list.append(file)
                print(' ✓ Installed: %s -> %s\n' % (src, dst))

            except FileExistsError:
                print(' X Not installed, file already exists.')

    def __init__(self):

        # find the user's home folder path
        self.home_path = os.path.expanduser('~')
        print('\nHome folder: %s' % self.home_path)

        # find our current working directory
        self.dotfile_source_path = os.path.dirname(os.path.abspath(__file__))
        print('\nDotfile source folder: %s' % self.dotfile_source_path)

        # find all the dotfiles available for installation
        self.get_dotfiles()

        # show all the detected dotfiles in this directory
        self.show_dotfiles()

        # install the files
        self.install()

        print('\nAll done! Installed %i dotfiles.' % len(self.installed_list))


if __name__ == '__main__':
    d = Dotfiles()
