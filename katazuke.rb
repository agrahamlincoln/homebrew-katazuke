class Katazuke < Formula
  desc "Developer workspace maintenance tool for tidying up git repositories"
  homepage "https://github.com/agrahamlincoln/katazuke"
  version "0.5.2"

  if OS.mac?
    url "https://github.com/agrahamlincoln/katazuke/releases/download/v0.5.2/katazuke-0.5.2-darwin-arm64.tar.gz"
    sha256 "f10c7895fe6a97e9351c4c60d8d69068204a6cc61036f208b0b9355333728f31"
  elsif OS.linux?
    url "https://github.com/agrahamlincoln/katazuke/releases/download/v0.5.2/katazuke-0.5.2-linux-amd64.tar.gz"
    sha256 "816ac38f3481f38ca37a5c3071922747fe0ca763409531855db165fd62489626"
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
