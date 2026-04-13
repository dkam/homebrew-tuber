class Tuber < Formula
  desc "A fast work queue - Rust rewrite of beanstalkd"
  homepage "https://github.com/tuberq/tuber"
  version "0.5.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/tuberq/tuber/releases/download/v0.5.2/tuber-aarch64-apple-darwin.tar.gz"
      sha256 "3c2e4e2f553678e292f4bee67eb0bc490f42a038017e064f9585aca268e16e8c"
    end
    on_intel do
      url "https://github.com/tuberq/tuber/releases/download/v0.5.2/tuber-x86_64-apple-darwin.tar.gz"
      sha256 "e86e4e9e3ee9a4f3deae78243a879b028f61fad02174fd60a4681d9d7ce7750d"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tuberq/tuber/releases/download/v0.5.2/tuber-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "8dc62ecf724a265efcbf4909fb4dcff2986fc981843a27be52b96c2144b2c852"
    end
    on_intel do
      url "https://github.com/tuberq/tuber/releases/download/v0.5.2/tuber-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "9b8a65d4c8c26fcf7e65bc50cd30d53450b7b4ad563ade86739b611b328f3766"
    end
  end

  def install
    bin.install "tuber"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/tuber --version")
  end
end
