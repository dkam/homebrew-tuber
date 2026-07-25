class TuberCli < Formula
  desc "CLI client for tuber work queue"
  homepage "https://github.com/tuberq/tuber-rs"
  version "0.11.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/tuberq/tuber-rs/releases/download/v0.11.0/tuber-cli-aarch64-apple-darwin.tar.gz"
      sha256 "238c65102ea588f6e9fb4d6b8847e45d20e76897d090696bb6fc38f1dd942d8a"
    end
    on_intel do
      url "https://github.com/tuberq/tuber-rs/releases/download/v0.11.0/tuber-cli-x86_64-apple-darwin.tar.gz"
      sha256 "fdd78d3ffd0b78236f68fb98c9f626559b9bf1633f7ea77b66c16f1835182055"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tuberq/tuber-rs/releases/download/v0.11.0/tuber-cli-aarch64-unknown-linux-musl.tar.gz"
      sha256 "a9099992a3ef31a03d30551acc419d6ab4242debfa16afa9037a683307246a7b"
    end
    on_intel do
      url "https://github.com/tuberq/tuber-rs/releases/download/v0.11.0/tuber-cli-x86_64-unknown-linux-musl.tar.gz"
      sha256 "82d00ee873d2d911ce9f7cb1c8772500829cd2f1805078f90cd5b6f0e7f293bf"
    end
  end

  def install
    bin.install "tuber-cli"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/tuber-cli --version")
  end
end
