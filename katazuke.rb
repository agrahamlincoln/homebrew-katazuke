class Katazuke < Formula
  desc "Developer workspace maintenance tool for tidying up git repositories"
  homepage "https://github.com/agrahamlincoln/katazuke"
  version "0.8.1"

  if OS.mac?
    url "https://github.com/agrahamlincoln/katazuke/releases/download/v0.8.1/katazuke-0.8.1-darwin-arm64.tar.gz"
    sha256 "8476a737c7510516217a642a276717c56dc9b77325eafc313264f3434242e963"
  elsif OS.linux?
    url "https://github.com/agrahamlincoln/katazuke/releases/download/v0.8.1/katazuke-0.8.1-linux-amd64.tar.gz"
    sha256 "1a62739edc7c6e2af107dbee0a36bc487990a347dd6467dcf6d70bfdaf1872f3"
  end

  def install
    if OS.mac?
      bin.install "katazuke-darwin-arm64" => "katazuke"
    elsif OS.linux?
      bin.install "katazuke-linux-amd64" => "katazuke"
    end
  end

  test do
    system "#{bin}/katazuke", "--version"
  end
end
