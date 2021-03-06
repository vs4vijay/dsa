class BinaryTree

  def self.print (root)
    p root
  end

  def self.inorder_traversal (root)

    if !root.nil?
      self.inorder_traversal(root.left)
      p root.data
      self.inorder_traversal(root.right)
    end

  end
  # same for preorder and postorder traversal

  def self.level_order_traversal (root)
    queue = []      # using queue for level order traversal
    if !root.nil?
      queue.push root
      while !queue.empty?
        node = queue.shift
        p node.data
        if !node.left.nil?
          queue.push(node.left)
        end
        if !node.right.nil?
          queue.push(node.right)
        end
      end
    end
  end

  def self.get_height (root)
    if root.nil?
      return 0
    else
      left_height = get_height(root.left)
      right_height = get_height(root.right)
      if left_height > right_height
        left_height + 1
      else
        right_height + 1
      end
    end
  end

end
