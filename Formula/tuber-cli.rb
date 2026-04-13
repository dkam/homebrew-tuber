class TuberCli < Formula
  desc "CLI client for tuber work queue"
  homepage "https://github.com/tuberq/tuber-rs"
  version "0.7.3"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/tuberq/tuber-rs/releases/download/v0.7.3/tuber-cli-aarch64-apple-darwin.tar.gz"
      sha256 "e376caa7680a286f21b85e985a3a69849bea156e340ddcffff8937dd565c9076"
    end
    on_intel do
      url "https://github.com/tuberq/tuber-rs/releases/download/v0.7.3/tuber-cli-x86_64-apple-darwin.tar.gz"
      sha256 "080ab968ab93021d370c940b4b1f8b546b1c6ace9b4baaeb186a3b79602b9468"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tuberq/tuber-rs/releases/download/v0.7.3/tuber-cli-aarch64-unknown-linux-musl.tar.gz"
      sha256 "228d7425cc749ac1a5a6a454dbb243da4dda3c7667e99e5dcb2ab3d369212749"
    end
    on_intel do
      url "https://github.com/tuberq/tuber-rs/releases/download/v0.7.3/tuber-cli-x86_64-unknown-linux-musl.tar.gz"
      sha256 "961a6b68cd34a3285d2c75a80189a47e6cd9e620050f69db32891df51cf9caaf"
    end
  end

  def install
    bin.install "tuber-cli"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/tuber-cli --version")
  end
end
