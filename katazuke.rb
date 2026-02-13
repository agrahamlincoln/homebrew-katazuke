class Katazuke < Formula
  desc "Developer workspace maintenance tool for tidying up git repositories"
  homepage "https://github.com/agrahamlincoln/katazuke"
  version "0.7.1"

  if OS.mac?
    url "https://github.com/agrahamlincoln/katazuke/releases/download/v0.7.1/katazuke-0.7.1-darwin-arm64.tar.gz"
    sha256 "fb7342b487608a5c3665ba65d17ba89891bd6274ba80ad5d2b438632ad4c31d1"
  elsif OS.linux?
    url "https://github.com/agrahamlincoln/katazuke/releases/download/v0.7.1/katazuke-0.7.1-linux-amd64.tar.gz"
    sha256 "f742cb87d32fd17c4af1062663e9a22d03c89a094e1a01e81f6f4ff2516fbdb4"
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
