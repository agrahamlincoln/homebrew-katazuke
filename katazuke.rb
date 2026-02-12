class Katazuke < Formula
  desc "Developer workspace maintenance tool for tidying up git repositories"
  homepage "https://github.com/agrahamlincoln/katazuke"
  version "0.1.3"

  if OS.mac?
    url "https://github.com/agrahamlincoln/katazuke/releases/download/v0.1.3/katazuke-0.1.3-darwin-arm64.tar.gz"
    sha256 "72023377c63aae3f5b56e9d0104d71fecd13f1a79a307265814538ddecabdbae"
  elsif OS.linux?
    url "https://github.com/agrahamlincoln/katazuke/releases/download/v0.1.3/katazuke-0.1.3-linux-amd64.tar.gz"
    sha256 "b0b787a62d2bc7e1770bab704512ec19296a4ac73621ec1fa8a9d4168dca6954"
  end

  def install
    bin.install "katazuke"
  end

  test do
    system "#{bin}/katazuke", "--version"
  end
end
