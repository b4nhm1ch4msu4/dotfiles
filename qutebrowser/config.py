config.load_autoconfig(True)

# Aliases
c.aliases = {
    "me": "messages",
    "so": "config-source",
    "h": "help",
    "ba": "bookmark-add",
    "bl": "bookmark-list",
    "q": "quit",
}


# Binding commnads
config.bind('<Ctrl-1>', 'tab-focus 1')
config.bind('<Ctrl-2>', 'tab-focus 2')
config.bind('<Ctrl-3>', 'tab-focus 3')
config.bind('<Ctrl-4>', 'tab-focus 4')
config.bind('<Ctrl-5>', 'tab-focus 5')
config.bind('<Ctrl-6>', 'tab-focus 6')
config.bind('<Ctrl-7>', 'tab-focus 7')
config.bind('<Ctrl-8>', 'tab-focus 8')
config.bind('<Ctrl-9>', 'tab-focus 9')

# URL
c.url.searchengines = {
    'DEFAULT': 'https://www.google.com/search?q={}',
    'wk': 'https://en.wikipedia.org/wiki/{}',
    'ddg': 'https://duckduckgo.com/?q={}',
    'gh': 'https://github.com/search?q={}',
    'yt': 'https://www.youtube.com/results?search_query={}',
}
c.url.open_base_url = True
c.url.default_page = 'https://www.google.com/'
c.url.start_pages = [
    'file:///E:/Personal_Project/home_page/homepage/index.html']

# Font
c.fonts.default_size = "15pt"
c.fonts.web.family.sans_serif = 'Public Sans'
c.fonts.web.family.serif = 'Public Sans'
c.fonts.web.family.standard = 'Public Sans'
c.fonts.web.family.fixed = 'Fira Code Bold'
c.fonts.default_family = 'Fira Code Bold'

c.colors.webpage.darkmode.enabled = True

# content
# c.content.javascript.enabled = True
c.content.local_content_can_access_remote_urls = True

# Set Neovim as the editor
c.editor.command = ['nvim', '-f', '{file}', '-c', 'normal {line}G{column0}l']
