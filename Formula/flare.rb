class Flare < Formula
  desc "Local-first search + document extraction across your files (CLI + MCP)"
  homepage "https://github.com/nha/flare"
  url "https://github.com/nha/flare/releases/download/v0.0.1/flare-cli-darwin-arm64.tar.gz"
  sha256 "f2d62f5b3ba15b47d7ab1d7aa6b01398727b6352246ea40ed22a647e5c26bbf4"
  version "0.0.1"
  depends_on :macos
  depends_on arch: :arm64

  def install
    bin.install "flare"
    zsh_completion.install  "completions/_flare"
    bash_completion.install "completions/flare.bash" => "flare"
  end

  test do
    assert_match "flare-local", shell_output("#{bin}/flare --version")
  end
end
