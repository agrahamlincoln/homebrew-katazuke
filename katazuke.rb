class Katazuke < Formula
  desc "Developer workspace maintenance tool for tidying up git repositories"
  homepage "https://github.com/agrahamlincoln/katazuke"
  version "0.6.0"

  if OS.mac?
    url "https://github.com/agrahamlincoln/katazuke/releases/download/v0.6.0/katazuke-0.6.0-darwin-arm64.tar.gz"
    sha256 "3c3dcc73717e417026ccfb2dafc9915ff73cdb29807935c837772b883f67ddf3"
  elsif OS.linux?
    url "https://github.com/agrahamlincoln/katazuke/releases/download/v0.6.0/katazuke-0.6.0-linux-amd64.tar.gz"
    sha256 "9511246d8c63d8ca01a3c176e9472885197ce507a654ab243ed69ee2a26a42fe"
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
