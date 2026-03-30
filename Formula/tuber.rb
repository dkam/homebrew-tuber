class Tuber < Formula
  desc "A fast work queue - Rust rewrite of beanstalkd"
  homepage "https://github.com/tuberq/tuber"
  version "0.3.14"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/tuberq/tuber/releases/download/v0.3.14/tuber-aarch64-apple-darwin.tar.gz"
      sha256 "09917189e1fdf0ceac4d43ccef33f96ad3fb9af92db56f6f648c6211e49b6863"
    end
    on_intel do
      url "https://github.com/tuberq/tuber/releases/download/v0.3.14/tuber-x86_64-apple-darwin.tar.gz"
      sha256 "dcd8d9e8283b8255834b01e7ab40ca9b5baebbb1d74013cef330f80c2b9a75bb"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tuberq/tuber/releases/download/v0.3.14/tuber-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "16442fb51ed67eb3693e1d49747265c2e1cf18a2bd695964f04f83402f2215ee"
    end
    on_intel do
      url "https://github.com/tuberq/tuber/releases/download/v0.3.14/tuber-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "cb76b79faef4acfaa56a6146c37749db44391cbcbc0e55613d71f9deec4f779b"
    end
  end

  def install
    bin.install "tuber"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/tuber --version")
  end
end
