class Katazuke < Formula
  desc "Developer workspace maintenance tool for tidying up git repositories"
  homepage "https://github.com/agrahamlincoln/katazuke"
  version "0.7.0"

  if OS.mac?
    url "https://github.com/agrahamlincoln/katazuke/releases/download/v0.7.0/katazuke-0.7.0-darwin-arm64.tar.gz"
    sha256 "3447d0cab5834fadcc66fbc0a6f644f0aeeadaf714cb0b9be89a48154f033726"
  elsif OS.linux?
    url "https://github.com/agrahamlincoln/katazuke/releases/download/v0.7.0/katazuke-0.7.0-linux-amd64.tar.gz"
    sha256 "9f00de5b9910d070fb91055f294d324d261f67e9b514cd9a7513e905304bcb8b"
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
