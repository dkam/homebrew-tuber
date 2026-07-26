class TuberCli < Formula
  desc "CLI client for tuber work queue"
  homepage "https://github.com/tuberq/tuber-rs"
  version "0.14.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/tuberq/tuber-rs/releases/download/v0.14.2/tuber-cli-aarch64-apple-darwin.tar.gz"
      sha256 "d1e53b9bd2609f4717a51992e743bc0eb23aa3b9121668ba6d836ba9d207ca35"
    end
    on_intel do
      url "https://github.com/tuberq/tuber-rs/releases/download/v0.14.2/tuber-cli-x86_64-apple-darwin.tar.gz"
      sha256 "30ed61675a4a66712c9c3a627881e64b389a0fff799eb781b9669685b66f330a"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tuberq/tuber-rs/releases/download/v0.14.2/tuber-cli-aarch64-unknown-linux-musl.tar.gz"
      sha256 "167877e5da06f3c7ded49be3cbdad411d2620aaa0d57a51ff3fe2f606e6821e2"
    end
    on_intel do
      url "https://github.com/tuberq/tuber-rs/releases/download/v0.14.2/tuber-cli-x86_64-unknown-linux-musl.tar.gz"
      sha256 "07b08d3200fa87f259df01761d3a01d58afdc92706654f2e88d94dc38c28227e"
    end
  end

  def install
    bin.install "tuber-cli"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/tuber-cli --version")
  end
end
