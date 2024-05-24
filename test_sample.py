import unittest
import main as web


class BasicTests(unittest.TestCase):

    def test_hello_endpoint(self):

        response = web.app.test_client().get('/')
        response_data = response.get_json()
        self.assertEqual(response_data['status'], 200)
        self.assertEqual(response_data['data'], 'Hello, World!')
        self.assertEqual(response_data['message'], 'Successs')


if __name__ == '__main__':
    unittest.main()