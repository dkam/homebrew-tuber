class TuberCli < Formula
  desc "CLI client for tuber work queue"
  homepage "https://github.com/tuberq/tuber-rs"
  version "0.14.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/tuberq/tuber-rs/releases/download/v0.14.0/tuber-cli-aarch64-apple-darwin.tar.gz"
      sha256 "fb35e4d9209280780334aaa8514bc536def591ecbf6cae837e287bf954c75c50"
    end
    on_intel do
      url "https://github.com/tuberq/tuber-rs/releases/download/v0.14.0/tuber-cli-x86_64-apple-darwin.tar.gz"
      sha256 "f43316b5b9ab2a960de36d57f920f75e162ed81dba86b959cc769f983b79135c"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tuberq/tuber-rs/releases/download/v0.14.0/tuber-cli-aarch64-unknown-linux-musl.tar.gz"
      sha256 "006ebc60004860f2f12405d18856dc5b16464bbd56bc18db3851b26f204f3ce6"
    end
    on_intel do
      url "https://github.com/tuberq/tuber-rs/releases/download/v0.14.0/tuber-cli-x86_64-unknown-linux-musl.tar.gz"
      sha256 "f972b229cd30a520728d4d4a1a5db942225981ef2eac7325065d8113cb15cae4"
    end
  end

  def install
    bin.install "tuber-cli"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/tuber-cli --version")
  end
end
