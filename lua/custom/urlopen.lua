return {
  'sontungexpt/url-open',
  -- :URLOpenUnderCursor	Open url under cursor
  -- :URLOpenHighlightAll	Highlight all url in current buffer
  -- :URLOpenHighlightAllClear	Clear all highlight url in current buffer   'sontungexpt/url-open',
  event = 'VeryLazy',
  cmd = 'URLOpenUnderCursor',
  config = function()
    local status_ok, url_open = pcall(require, 'url-open')
    if not status_ok then
      return
    end
    url_open.setup {}
  end,
}
