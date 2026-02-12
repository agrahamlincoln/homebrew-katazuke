class Katazuke < Formula
  desc "Developer workspace maintenance tool for tidying up git repositories"
  homepage "https://github.com/agrahamlincoln/katazuke"
  version "0.1.1"

  if OS.mac?
    url "https://github.com/agrahamlincoln/katazuke/releases/download/v0.1.1/katazuke-0.1.1-darwin-arm64.tar.gz"
    sha256 "4e330065f6ac42a0334db1f95eb64d2bc175ad75629622e0fbf7b236c30b2ee7"
  elsif OS.linux?
    url "https://github.com/agrahamlincoln/katazuke/releases/download/v0.1.1/katazuke-0.1.1-linux-amd64.tar.gz"
    sha256 "0e9b5ac5bba19ec643cff56cbff80ffeadf5589c05baf98997eff5c6a279251e"
  end

  def install
    bin.install "katazuke"
  end

  test do
    system "#{bin}/katazuke", "--version"
  end
end
