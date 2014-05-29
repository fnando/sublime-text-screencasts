xml.rss({
  :version => '2.0',
  :"xmlns:content" => 'http://purl.org/rss/1.0/modules/content/',
  :"xmlns:atom" => 'http://www.w3.org/2005/Atom'
}) do
  xml.channel do
    xml.title 'Dominando o Sublime Text'
    xml.description 'Micro screencasts sobre Sublime Text criados por Nando Vieira'
    xml.language 'pt-BR'
    xml.link 'http://sublime.simplesideias.com.br'

    xml.tag! :"atom:link", {
      href: 'http://sublime.simplesideias.com.br/feed.xml',
      rel: 'self',
      type: 'application/rss+xml'
    }

    xml.pubDate screencasts.first.date.rfc822
    xml.lastBuildDate screencasts.last.date.rfc822

    screencasts.reverse.take(10).each do |page|
      xml.item do
        xml.title h(page.title)

        xml.tag! :"content:encoded" do
          xml.cdata!(partial :video, page: page, tracks: tracks_for_page(page))
        end

        link = "http://sublime.simplesideias.com.br/#{page.permalink}"
        xml.link link
        xml.guid link
        xml.pubDate page.date.rfc822
      end
    end
  end
end
