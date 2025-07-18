require "language/node"

class Schiba < Formula
  desc "Extract database schema in a compact format for AI chat context"
  homepage "https://github.com/kennylwx/schiba"
  url "https://registry.npmjs.org/schiba/-/schiba-0.2.10.tgz"
  sha256 "c092792d378e88e832aabffc609ddda46965329f79a917c8dc6a6b805fcfcfff"
  license "MIT"

  depends_on "node"

  def install
    system "npm", "install", *Language::Node.std_npm_install_args(libexec)
    bin.install_symlink Dir["#{libexec}/bin/*"]
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/schiba --version")
  end
end
