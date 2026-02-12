class Katazuke < Formula
  desc "Developer workspace maintenance tool for tidying up git repositories"
  homepage "https://github.com/agrahamlincoln/katazuke"
  version "0.4.0"

  if OS.mac?
    url "https://github.com/agrahamlincoln/katazuke/releases/download/v0.4.0/katazuke-0.4.0-darwin-arm64.tar.gz"
    sha256 "7792ffe879d9fcbf78899dddcb5d2f99eb722b6a1628a0600070aa16676214eb"
  elsif OS.linux?
    url "https://github.com/agrahamlincoln/katazuke/releases/download/v0.4.0/katazuke-0.4.0-linux-amd64.tar.gz"
    sha256 "608e9e6dcfa4538da7eaafa08b93f2c010d67db07f48e1aabd170aa8b7555700"
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
