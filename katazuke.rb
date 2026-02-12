class Katazuke < Formula
  desc "Developer workspace maintenance tool for tidying up git repositories"
  homepage "https://github.com/agrahamlincoln/katazuke"
  version "0.1.2"

  if OS.mac?
    url "https://github.com/agrahamlincoln/katazuke/releases/download/v0.1.2/katazuke-0.1.2-darwin-arm64.tar.gz"
    sha256 "421351e4b43e0f172ce0b9a7b106d13124266d84f9215dad6743361d9f362688"
  elsif OS.linux?
    url "https://github.com/agrahamlincoln/katazuke/releases/download/v0.1.2/katazuke-0.1.2-linux-amd64.tar.gz"
    sha256 "e3b50925d99e9b086e37e7dc3a8fa804b1f0b112df64ff5bf367c0bdc6aaa580"
  end

  def install
    bin.install "katazuke"
  end

  test do
    system "#{bin}/katazuke", "--version"
  end
end
