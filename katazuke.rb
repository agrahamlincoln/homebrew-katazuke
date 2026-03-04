class Katazuke < Formula
  desc "Developer workspace maintenance tool for tidying up git repositories"
  homepage "https://github.com/agrahamlincoln/katazuke"
  version "0.11.0"

  if OS.mac?
    url "https://github.com/agrahamlincoln/katazuke/releases/download/v0.11.0/katazuke-0.11.0-darwin-arm64.tar.gz"
    sha256 "1da42d4f1d3039521ed30451f213b46b92e0eedefb1ab080192a411c26fca528"
  elsif OS.linux?
    url "https://github.com/agrahamlincoln/katazuke/releases/download/v0.11.0/katazuke-0.11.0-linux-amd64.tar.gz"
    sha256 "772b054d8cba32f8713e37fbe1179a962445735fe696ea437cfe24a222f06303"
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
